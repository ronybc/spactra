
/*
  Audio spectrum analyser - FFTW based, with GNUPlot output.
  GPL - 2011 Rony B Chandran ( http://www.ronybc.com )
  --------------------------------------------------------------

  play -q -n synth 10 sine 60 synth 3000 sine mix 7000 rate -v 96000
   
  Enviroment variable AUDIODEV is used by sox(play) as well.

  killall -s SIGKILL sox >/dev/null 2>&1 ;\
  killall -s SIGKILL play >/dev/null 2>&1;\
  export AUDIODEV="hw:CARD=`cat /proc/asound/card0/id`,DEV=0" ;\
  echo AUDIODEV=\"$AUDIODEV\" ;\
  play -q -n synth 10 sine 1000 rate -v 96000 >/dev/null 2>&1 & \
  ./spactra -b 7 -r 96000 |gnuplot > spactra.png ;\
  gthumb spactra.png
\
 */

#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>
#include "fftsg.c"
#include <fftw3.h>
#include <math.h>

static double execute_ooura_fft (double *wav, int n)
{
	double peak = 0;
	
	double *fft = wav;
	double *w = malloc(sizeof(double) * (n*5/4));
	int *ip = malloc(sizeof(int) * (sqrt(n) + 2));
	ip[0] = 0;
	rdft(n, 1, fft, ip, w);

	for (int i = 0; i < n; i+=2)
	{
		double mag;
		mag = sqrt(pow(fft[i], 2) + pow(fft[i+1], 2));
		if(peak < mag) peak = mag;
		wav[i/2] = mag;
	}
	
	free(w);
	free(ip);
	return(peak);
}

static double execute_fftw (double *wav, int n)
{
	int fn = ( n / 2 ) + 1;
	double peak = 0;
	
	fftw_complex *fft = fftw_malloc(sizeof(fftw_complex) * fn);
	fftw_plan plan_et = fftw_plan_dft_r2c_1d(n, wav, fft, FFTW_ESTIMATE);
	fftw_execute(plan_et);

	for (int i = 0; i < fn; i++)
	{
		double mag;
		mag = sqrt(pow(fft[i][0], 2) + pow(fft[i][1], 2));
		if(peak < mag) peak = mag;
		wav[i] = mag;
	}
	
	fftw_destroy_plan(plan_et);
	fftw_free(fft);
	return(peak);
}

// http://www.labbookpages.co.uk
static double modZeroBessel(double x)
{
	int i;
	double x_2 = x/2;
	double num = 1;
	double fact = 1;
	double result = 1;

	for (i=1 ; i<20 ; i++)
	{
		num *= x_2 * x_2;
		fact *= i;
		result += num / (fact * fact);
	}

	return result;
}

// http://www.labbookpages.co.uk
static void window_kaiser(double *out, int windowLength, double beta)
{
	double m_2 = (double)(windowLength-1) / 2.0;
	double denom = modZeroBessel(beta); // Denominator of Kaiser function

	for (int n = 0 ; n < windowLength ; n++)
	{
		double val = ((n) - m_2) / m_2;
		val = 1 - (val * val);
		out[n] *= modZeroBessel(beta * sqrt(val)) / denom;
	}
}

static void window_hanning(double *wav, int n)
{
	for (int i = 0; i < n; i++)
	{
		double window;
		window = 0.5 * (1 - cos(2.0 * M_PI * i / (n-1)));
		wav[i] = window * wav[i];
	}
}

static void window_blackman_harris(double *wav, int n, double order)
{
	for (int i = 0; i < n; i++)
	{
		double window;
		window = 0.35875 - \
		             0.48829 * cos(2.0 * M_PI * i / (n-1)) + \
		             0.14128 * cos(4.0 * M_PI * i / (n-1)) - \
		             0.01168 * cos(6.0 * M_PI * i / (n-1));
		wav[i] = pow(window, order) * wav[i];
	}
}

static void output_gnuplot (double *buf, int n, double scale_x, double scale_mag)
{
	int f0 = 1;
	int fn = ( n / 2 ) + 1;
	double peak = 0, harmonics = 0, thd;
	
	printf("set grid\n");
	printf("show grid\n");
	printf("set ytics 10\n");
	printf("set xtics 1000\n");
	printf("set yrange [-160:0]\n");
	//printf("set term png medium size 1920,1080\n");
	printf("set term png medium size 1366,768\n");
	printf("set term png background \"#FFFFFF\"\n");
	printf("set xrange [0:20000]\n");
	
	for (int i = 10; i < fn; i++)
	{
		if(buf[i] > peak)
		{
			peak = buf[i];
			f0 = i;
		}
	}
	
	fprintf(stderr, "f0 = %u\n", f0);
	
	for(int i = f0*2 ; i < fn; i += f0)
	{
		double max = buf[i];
		if(buf[i-1] > max) max = buf[i-1];
		if(buf[i+1] > max) max = buf[i+1];
		harmonics += pow(max/scale_mag,2);
	}

	thd = 100.0 * sqrt(harmonics) / (buf[f0]/scale_mag);
	
	fprintf(stderr, "THD = %f%% (f0 = %.1fHz, %f dBFS)\n", \
		thd, f0 * scale_x, 20.0*log10(peak/scale_mag));
	printf("set label \"THD = %f%% (f0 = %.1fHz, %f dBFS)\" at graph 0.5,0.9\n", \
		thd, f0 * scale_x, 20.0*log10(peak/scale_mag));

	printf("plot \"-\" using 1:2 with lines\n");
	for (int i = 0; i < fn; i++)
	{
		double dB;
		dB = 20.0*log10(buf[i]/scale_mag);
		printf ("%4d %12f\n", (int) (i * scale_x), dB);
	}
	printf("end\nquit\n");	
	return;
}

static snd_pcm_t *init_alsa(char *device, int sample_rate)
{
	int err;
	snd_pcm_t *handle;

	if ((err = snd_pcm_open(&handle, device, SND_PCM_STREAM_CAPTURE, 0)) < 0)
	{
		fprintf(stderr,"error: snd_pcm_open(): %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}
	if ((err = snd_pcm_set_params(handle,
	                              SND_PCM_FORMAT_S32_LE,
	                              SND_PCM_ACCESS_RW_INTERLEAVED,
	                              2,
	                              sample_rate,
	                              0,
	                              500000)) < 0)     /* 0.5sec */
	{
		fprintf(stderr,"error: snd_pcm_set_params(): %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}
	return(handle);
}

int main(int argc, char *argv[])
{
	int sample_rate = 96000;
	int i, err, fft_width, window_function = 0, fft_ooura = 0;
	double window_parameter = 0;
	snd_pcm_t *handle;
	int32_t *pcm;
	double *wav;
	char *input;
	double scale_mag;

	while ((i = getopt (argc, argv, "b:k:r:o")) != -1)
	{
		switch(i)
		{
		case 'b':
			window_function = 1;
			window_parameter = atoi(optarg);
			fprintf(stderr,"using Blackman-Harris (order %.1f) window..\n", window_parameter);
			break;
		case 'k':
			window_function = 2;
			window_parameter = atoi(optarg);
			fprintf(stderr,"using Kaiser (beta %.1f) window..\n", window_parameter);
			break;
		case 'r':
			sample_rate = atoi(optarg);
			break;
		case 'o':
			fft_ooura = 1;
			fprintf(stderr,"using Ooura FFT\n");
			break;
		default:
			fprintf(stderr,"ERROR: wrong parameter...\n");
			return 1;
		}
	}

	//handle = init_alsa("default");
	//handle = init_alsa("hw:CARD=NVidia,DEV=0");
	//handle = init_alsa("hw:CARD=PCH,DEV=0");
	input = getenv("AUDIODEV");
	if(input == NULL || *input == 0)
	{
		fprintf(stderr,"\
ERROR: Missing required environment variable AUDIODEV\n \
export AUDIODEV=\"hw:CARD=`cat /proc/asound/card0/id`,DEV=0\"\n");
		return(-1);
	}
	
	fprintf(stderr,"setting input: %s\n", input);
	fprintf(stderr,"sample rate: %u\n", sample_rate);
	handle = init_alsa(input, sample_rate);

	if(fft_ooura)
	{	
		fft_width = 2;
		while(fft_width<sample_rate) fft_width = fft_width * 2;
	}
	else
	{
		fft_width = sample_rate;
	}
	
	fprintf(stderr,"FFT size: %u\n",fft_width);
	
	pcm = malloc(fft_width * 2 * sizeof(int32_t));
	wav = fftw_malloc((fft_width+2) * sizeof(double));

	fprintf(stderr,"Calibrating... selected FFT + Windowing combination\n");
	// 1kHz, 0 dBFS sine wave
	for (i = 0; i < fft_width; i++)
	{
		wav[i] = sin(i * 2.0 * M_PI * 1000.0 / sample_rate);
	}
	
	switch(window_function)
	{
	case 1:
		window_blackman_harris(wav, fft_width, window_parameter);
		break;
	case 2:
		window_kaiser(wav, fft_width, window_parameter);
		break;
	default:
		window_hanning(wav, fft_width);
	}

	if(fft_ooura)
	{
		scale_mag = execute_ooura_fft(wav, fft_width);
	}
	else
	{
		scale_mag = execute_fftw(wav, fft_width);
	}
	
	fprintf(stderr, "DFT out @ 1kHz, 0 dBFS = %f\n", scale_mag);

	if ((err = snd_pcm_readi(handle, pcm, fft_width)) != fft_width)
	{
		snd_pcm_prepare(handle);
		fprintf(stderr,"ERROR: got %d samples.. (requested %d)\n", (int) err, fft_width);
		fprintf(stderr,"ERROR: snd_pcm_readi(): %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}

	for(i = 0; i < fft_width; i++)
	{
		wav[i] = ((double) pcm[i*2]) / 2147483647.0;
	}
/*
	// -100 dBFS, 1 kHz sine wave for testing
	for (i = 0; i < fft_width; i++)
	{
		wav[i] = 0.00001 * sin(i * 2.0 * M_PI * 1000.0 / sample_rate);
	}
*/	
	switch(window_function)
	{
	case 1:
		window_blackman_harris(wav, fft_width, window_parameter);
		break;
	case 2:
		window_kaiser(wav, fft_width, window_parameter);
		break;
	default:
		window_hanning(wav, fft_width);
	}

	if(fft_ooura)
	{
		execute_ooura_fft(wav, fft_width);
	}
	else
	{
		execute_fftw(wav, fft_width);
	}

	output_gnuplot(wav, fft_width, (double) sample_rate / fft_width, scale_mag);
	
	free(pcm);
	fftw_free(wav);
	snd_pcm_close(handle);
	return 0;
}

/*

play -q -n synth 10 sine 60 synth 3000 sine mix 7000 rate -v 96000

killall -s SIGKILL sox >/dev/null 2>&1 ;\
killall -s SIGKILL play >/dev/null 2>&1;\
export AUDIODEV="hw:CARD=`cat /proc/asound/card0/id`,DEV=0" ;\
echo AUDIODEV=\"$AUDIODEV\" ;\
play -q -n synth 10 sine 1000 rate -v 96000 >/dev/null 2>&1 & \
./spactra -b 7 -r 96000 |gnuplot > spactra.png ;\
gthumb spactra.png

*/
