#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <alsa/asoundlib.h>
#include <fftw3.h>
#include <math.h>

int sample_rate = 192000;

void spectra (double *in, int n)
{
	int i, fn;
	fftw_complex *out;
	fftw_plan plan_et;

	fn = ( n / 2 ) + 1;
	out = fftw_malloc(sizeof(fftw_complex) * fn);
	plan_et = fftw_plan_dft_r2c_1d(n, in, out, FFTW_ESTIMATE);
	fftw_execute(plan_et);

	printf("set grid\n");
	printf("show grid\n");
	printf("set ytics 10\n");
	printf("set xtics 1000\n");
	printf("set term png medium size 1500,800 xffffff\n");
	/*printf("set yrange [-160:0]\n");*/
	printf("set xrange [0:24000]\n");
	printf("plot \"-\" using 1:(20*(log10($2/%f))) with line\n",n/2.0);
	for ( i = 0; i < fn; i++ )
	{
		printf ("%4d %12f\n", (int) (i * (((double) sample_rate)/n)), sqrt(pow(out[i][0], 2) + pow(out[i][1], 2)));
	}
	printf("end\nquit\n");

	fftw_destroy_plan(plan_et);
	fftw_free(out);
	return;
}

double modZeroBessel(double x)
{
	int i;

	//return j0(x);

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

void window_kaiser(double *out, int windowLength, double beta)
{
	double m_2 = (double)(windowLength-1) / 2.0;
	double denom = modZeroBessel(beta);	// Denominator of Kaiser function

	int n;
	for (n=0 ; n<windowLength ; n++)
	{
		double val = ((n) - m_2) / m_2;
		val = 1 - (val * val);
		out[n] *= modZeroBessel(beta * sqrt(val)) / denom;
	}

}

void window_hanning(double *wav, int n)
{
	int i;
	double multiplier;

	for (i = 0; i < n; i++)
	{
		multiplier = 0.5 * (1 - cos(2.0 * M_PI * i / (n-1)));
		wav[i] = multiplier * wav[i];
	}
}

snd_pcm_t *init_alsa(char *device)
{
	int err;
	snd_pcm_t *handle;

	if ((err = snd_pcm_open(&handle, device, SND_PCM_STREAM_CAPTURE, 0)) < 0)
	{
		printf("Capture open error: %s\n", snd_strerror(err));
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
		printf("Capture set_param error: %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}
	return(handle);
}

int main(int argc, char *argv[])
{

	unsigned int i, sample_count, kaiser = 0;
	snd_pcm_t *handle;
	snd_pcm_sframes_t frames;
	int *pcm;
	double *wav;

	sample_count = sample_rate;

	while ((i = getopt (argc, argv, "k:w:r:")) != -1)
	{
		switch(i)
		{
		case 'k':
			kaiser = atoi(optarg);
			fprintf(stderr,"using Kaiser %u window..\n", kaiser);
			break;
		case 'w':
			sample_count = atoi(optarg);
			fprintf(stderr,"set window size to %u\n", sample_count);
			break;
		case 'r':
			sample_rate = atoi(optarg);
			fprintf(stderr,"set sample rate to %u\n", sample_rate);
			break;
		default:
			fprintf(stderr, "wrong... help not available.\n");
			return 1;
		}
	}

	handle = init_alsa("hw:CARD=SB,DEV=0");

	pcm = fftw_malloc(sample_count * 2 * sizeof(int));
	wav = fftw_malloc(sample_count * sizeof(double));

	/*
		frames = snd_pcm_readi(handle, pcm, sample_count);
		if(frames != sample_count)
		{
			fprintf(stderr,"got %u (requested %u) samples..\n", (int) frames, sample_count);
			fprintf(stderr,"Playback set_param error: %s\n", snd_strerror(frames));
			exit(EXIT_FAILURE);
		}
	*/

	while ( (frames = snd_pcm_readi(handle, pcm, sample_count)) < 0)
	{
		snd_pcm_prepare(handle);
		fprintf(stderr,"got %d samples.. (requested %d)\n", (int) frames, sample_count);
	}

	for(i = 0; i < sample_count*2; i+=2)
	{

		wav[i/2] =  ((double) pcm[i]) / 2147483648.0;
	}

	if(kaiser)
	{
		window_kaiser(wav, sample_count, kaiser);
	}
	else
	{
		window_hanning(wav, sample_count);
	}

	spectra(wav, sample_count);

	fftw_free(pcm);
	fftw_free(wav);
	snd_pcm_close(handle);
	return 0;
}

/*

	./spectra kaiser 10 |gnuplot > spectra.png ; eog spectra.png &

*/
