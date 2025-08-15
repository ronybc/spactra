#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fftw3.h>
#include <math.h>

int sample_rate = 192000;

void spectra (double *in, int n)
{
	int i, fn, f0 = 0;
	fftw_complex *out;
	fftw_plan plan_et;
	double dB_peak = -1234.0, harmonics = 0, scale_x;

	fn = ( n / 2 ) + 1;
	scale_x = ((double) sample_rate) / n;

	out = fftw_malloc(sizeof(fftw_complex) * fn);
	plan_et = fftw_plan_dft_r2c_1d(n, in, out, FFTW_ESTIMATE);
	fftw_execute(plan_et);

	printf("set grid\n");
	printf("show grid\n");
	printf("set ytics 10\n");
	printf("set xtics 1000\n");
	//printf("set term png medium size 1500,800 xffffff\n");
	printf("set xrange [0:24000]\n");
	printf("plot \"-\" using 1:2 with lines\n");
	for (i = 0; i < fn; i++)
	{
		double mag, dB;
		mag = sqrt(pow(out[i][0], 2) + pow(out[i][1], 2)); /* 20*log(sqrt(x)) = 10*log(x) */
		dB = 20.0*log10(mag/((double)n/4.0));
		printf ("%4d %12f\n", (int) (i * scale_x), dB);
		if(dB > dB_peak)
		{
			dB_peak = dB;
			f0 = i;
		}
	}
	//printf("end\nquit\n");
	printf("end\npause -1\n");

	if(!f0) f0 = fn;

	for(i = f0*2 ; i < fn; i += f0)
	{
		harmonics += pow(out[i][0],2) + pow(out[i][1],2);
	}

	harmonics = sqrt(harmonics) / sqrt( pow(out[f0][0],2) + pow(out[f0][1],2) );

	fprintf(stderr, "THD = %f%% (f0 = %uHz, %f dBFS)\n",
	        harmonics*100.0, (int)(f0 * scale_x), dB_peak);

	fftw_destroy_plan(plan_et);
	fftw_free(out);
	return;
}

int get_wave(double *wav, int n)
{
	int i = 0;
	char buf[24];

	n--;
	while(fgets(buf,20,stdin) != 0)
	{
		wav[i] = atof(buf);
		if(i < n) i++;
	}

	return(i);
}

int parse_sox_dat(double *wav, int max)
{
	int n = 0;
	char buf[64];

	fgets(buf,64,stdin);
	sample_rate = atoi(&buf[13]);
	fgets(buf,64,stdin);

	while(fgets(buf,64,stdin) != 0 && n < max)
	{
		wav[n] = atof(&buf[16]);
		n++;
	}

	return(n);
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

int main(int argc, char *argv[])
{
	int i, err, n, kaiser = 0;
	double *wav;

	while ((i = getopt (argc, argv, "k:w:r:")) != -1)
	{
		switch(i)
		{
		case 'k':
			kaiser = atoi(optarg);
			fprintf(stderr,"using Kaiser %u window..\n", kaiser);
			break;
		default:
			fprintf(stderr,"given wrong params... help not available.\n");
			return 1;
		}
	}

	wav = fftw_malloc(sizeof(double) * 1048576);
	/*
		for ( i = 0; i < 10000; i++ )
		{
			wav[i] = sin(((double)i)*0.1);
		}
	*/
	n = parse_sox_dat(wav, 1048576);
	fprintf(stderr,"processing %u samples\n", n);

	if(kaiser)
	{
		window_kaiser(wav, n, kaiser);
	}
	else
	{
		window_hanning(wav, n);
	}

	spectra(wav, n);

	fftw_free(wav);
	return 0;
}

/*

sox -c2 -r 48000 -n -t dat - synth 2 sine 700 synth 2 sine mix 8000 |./fftee > plt ;gnuplot plt
---
for T in $(seq 04.00 0.002 08.00) ;do sox ../rec.wav -t dat - trim $T 0.1 |./fftee |gnuplot > big/plot-$T.png ;done
mencoder mf://*.png -mf fps=25 -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=2000 -of avi -o output.avi
--


To convert your audio samples to a power spectrum: (Paul R)
-----------------------------------------------------------------------------
- if your audio data is integer data then convert it to floating point
- pick an FFT size (e.g. N=1024)
- apply a window function to N samples of your data (e.g. Hanning)
- use a real-to-commplex FFT of size N to generate frequency domain data
- calculate the magnitude of your complex frequency domain data (magnitude = sqrt(re^2 + im^2))
- optionally convert magnitude to a log scale (dB) (magnitude_dB = 20*log10(magnitude))

sox -c2 -r 44100 -n -p synth 2 sine 1000 |sox - -t dat - rate -v 192000 |./fftee > plt ;gnuplot plt
sox -c2 -r 44100 -n -t dat -  synth 2 sine 1000 |./fftee > plt ;gnuplot plt

*/
