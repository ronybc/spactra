#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>
#include <fftw3.h>
#include <math.h>

int sample_rate = 192000;

void spectra (double *in, int n)
{
	int i, fn, f0 = 0;
	fftw_complex *out;
	fftw_plan plan_et;
	double fpeak = 0, harmonics = 0;

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
	//printf("plot \"-\" using 1:(20*(log10($2/%u))) with line\n", n/2);
	printf("plot \"-\" using 1:2 with line\n");
	for (i = 0; i < fn; i++)
	{
		double mag, dB;
		mag = sqrt(pow(out[i][0], 2) + pow(out[i][1], 2));
		dB = 20.0*(log10(mag/(n/2)));
		//printf ("%4d %12f\n", (int) ((((double) sample_rate)/n)*i), mag);
		printf ("%4d %12f\n", (int) ((((double) sample_rate)/n)*i), dB);
		if(mag > fpeak)
		{
			fpeak = mag;
			f0 = i;
		}
	}
	printf("end\nquit\n");

	for(i = f0*2 ; i < fn; i += f0)
	{
		double h;
		h = pow(out[i][0],2) + pow(out[i][1],2);
		harmonics += h;
	}
	harmonics = sqrt(harmonics) / sqrt( pow(out[f0][0],2) + pow(out[f0][1],2) );
	fprintf(stderr, "THD = %f%% (f0 = %uHz)\n", harmonics*100.0, (int)((((double) sample_rate)/n)*f0));

	fftw_destroy_plan(plan_et);
	fftw_free(out);
	return;
}

double modZeroBessel(double x)
{
	/*return j0(x); */
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

	int i, err, sample_count, kaiser = 0;
	snd_pcm_t *handle;
	int32_t *pcm;
	double *wav;

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

	if(!sample_count) sample_count = sample_rate;

	handle = init_alsa("hw:CARD=SB,DEV=0");

	pcm = fftw_malloc(sample_count * 2 * sizeof(int32_t));
	wav = fftw_malloc(sample_count * sizeof(double));

	if ((err = snd_pcm_readi(handle, pcm, sample_count)) != sample_count)
	{
		snd_pcm_prepare(handle);
		fprintf(stderr,"error: got %d samples.. (requested %d)\n", (int) err, sample_count);
		fprintf(stderr,"error: snd_pcm_readi(): %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}

	for(i = 0; i < sample_count; i++)
	{
		wav[i] =  ((double) pcm[i*2]) / 2147483648.0;
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

	./spectra -k 10 -r 44100 |gnuplot > spectra.png ; eog spectra.png &

*/
