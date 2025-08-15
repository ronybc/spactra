#include <stdint.h>
#include <alsa/asoundlib.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fftw3.h>
#include <math.h>

#define SAMPLE_RATE 192000

double dmax(double *buf, int n)
{
	int i;
	double max = 0;
	for(i = 0; i < n; i++)
	{
		max = fmax(max, buf[i]);
	}
	return(max);
}

void fftee_oo (double *in, int n)
{
	int i, fn;
	double max = 0;
	fftw_complex *out;
	fftw_plan plan_et;

	fn = ( n / 2 ) + 1;
	out = fftw_malloc(sizeof(fftw_complex) * fn);
	plan_et = fftw_plan_dft_r2c_1d(n, in, out, FFTW_ESTIMATE);
	fftw_execute(plan_et);

	for(i = 0; i < fn; i++)
	{
		double t;
		t = sqrt((out[i][0]*out[i][0])+(out[i][1]*out[i][1]));
		in[i] = t;
		max = fmax(max, fabs(t));
	}

	max = max * (1.0 / 0.8); // there is only 0.83 peak

	printf("set grid\n");
	printf("show grid\n");
	printf("set ytics 10\n");
	printf("set xtics 1000\n");
	printf("set term png medium size 1500,800 xffffff\n");
	/*printf("set yrange [-160:0]\n");*/
	printf("set xrange [0:24000]\n");
	printf("plot \"-\" using 1:(10*(log($2/%f))) with line\n",max);
	for ( i = 0; i < fn; i++ )
	{
		printf ("%4d %12f\n", (int) (i * ( ((double)SAMPLE_RATE)/n)), in[i]);
	}
	printf("end\nquit\n");

	fftw_destroy_plan(plan_et);
	fftw_free(out);
	return;
}

void fftee (double *in, int n)
{
	int i, fn;
	double max = 0;
	fftw_complex *out;
	fftw_plan plan_et;

	fn = ( n / 2 ) + 1;
	out = fftw_malloc(sizeof(fftw_complex) * fn);
	plan_et = fftw_plan_dft_r2c_1d(n, in, out, FFTW_ESTIMATE);
	fftw_execute(plan_et);

	for(i = 0; i < fn; i++)
	{
		double t;
		t = sqrt((out[i][0]*out[i][0])+(out[i][1]*out[i][1]));
		in[i] = t;
		max = fmax(max, fabs(t));
	}

	max = max * (1.0 / 0.8); // there is only 0.83 peak

	printf("set grid\n");
	printf("show grid\n");
	printf("set ytics 10\n");
	printf("set xtics 1000\n");
	printf("set term png medium size 1500,800 xffffff\n");
	/*printf("set yrange [-160:0]\n");*/
	printf("set xrange [0:24000]\n");
	printf("plot \"-\" using 1:(10*(log($2/%f))) with line\n",max);
	for ( i = 0; i < fn; i++ )
	{
		printf ("%4d %12f\n", (int) (i * (((double)SAMPLE_RATE) / n) ), in[i]);
	}
	printf("end\nquit\n");

	fftw_destroy_plan(plan_et);
	fftw_free(out);
	return;
}

double modZeroBessel(double x)
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
		multiplier = 0.5 * (1 - cos(2 * 3.14159265 * i / (n-1)));
		wav[i] = multiplier * wav[i];
	}
}

snd_pcm_t *init_alsa(char *device)
{
	int err;
	snd_pcm_t *handle;

	if ((err = snd_pcm_open(&handle, device, SND_PCM_STREAM_CAPTURE, 0)) < 0)
	{
		printf("Playback open error: %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}
	if ((err = snd_pcm_set_params(handle,
	                              SND_PCM_FORMAT_S32_LE,
	                              SND_PCM_ACCESS_RW_INTERLEAVED,
	                              2,
	                              SAMPLE_RATE,
	                              0,
	                              500000)) < 0)     /* 0.5sec */
	{
		printf("Playback set_param error: %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}

	return(handle);
}

int main(int argc, char *argv[])
{

	unsigned int i, sample_count;
	snd_pcm_t *handle;
	snd_pcm_sframes_t frames;
	int pcm[1*SAMPLE_RATE];
	double *wav;

	handle = init_alsa("hw:CARD=SB,DEV=0");

	sample_count = (sizeof(pcm) / sizeof(int)) / 2;

	frames = snd_pcm_readi(handle, pcm, sample_count);
	fprintf(stderr,"got %u (requested %u) samples..\n", (int) frames, sample_count);

	wav = fftw_malloc(sizeof(double) * sample_count);

	for(i = 0; i < sample_count*2; i+=2)
	{
		wav[i/2] = ((double) pcm[i]) / 2147483648.0;
	}

	if(strcmp(argv[1], "kaiser") == 0)
	{
		i = 3;
		if(argc > 1) i = atoi(argv[2]);
		fprintf(stderr,"using Kaiser %u window..\n",i);
		window_kaiser(wav, sample_count, i);
	}
	else
	{
		fprintf(stderr,"using Hanning window.. (%s)\n",argv[1]);
		window_hanning(wav, sample_count);
	}

	fftee(wav, sample_count);

	fftw_free(wav);
	snd_pcm_close(handle);
	return 0;
}

