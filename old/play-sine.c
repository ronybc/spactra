/*
 *  This extra small demo sends a random samples to your speakers.
 */

#include <stdint.h>
#include <alsa/asoundlib.h>
#include <math.h>

/*static char *device = "default";  */
static char *device = "hw:CARD=SB,DEV=0";

snd_output_t *output = NULL;

int main(void)
{
	int err;
	unsigned int i;
	snd_pcm_t *handle;
	snd_pcm_sframes_t frames;
	//int wav[16*1024];
	int wav[314159];


	for (i = 0; i < (sizeof(wav)/sizeof(int)); i++)
	{
		wav[i] = (2147483648.0 * sin(((double)i)*0.01));
	}

	if ((err = snd_pcm_open(&handle, device, SND_PCM_STREAM_PLAYBACK, 0)) < 0)
	{
		printf("Playback open error: %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}
	if ((err = snd_pcm_set_params(handle,
	                              SND_PCM_FORMAT_S32_LE,
	                              SND_PCM_ACCESS_RW_INTERLEAVED,
	                              2,
	                              192000,
	                              0,
	                              500000)) < 0)     /* 0.5sec */
	{
		printf("Playback set_param error: %s\n", snd_strerror(err));
		exit(EXIT_FAILURE);
	}

	for (i = 0; i < 16; i++)
	{
		frames = snd_pcm_writei(handle, wav, (sizeof(wav)/sizeof(int))/2);
		if (frames < 0)
			frames = snd_pcm_recover(handle, frames, 0);
		if (frames < 0)
		{
			printf("snd_pcm_writei failed: %s\n", snd_strerror(err));
			break;
		}
		if (frames > 0 && frames < (long) (sizeof(wav)/sizeof(int))/2)
			printf("Short write (expected %li, wrote %li)\n", (long)(sizeof(wav)/sizeof(int))/2, frames);
	}

	snd_pcm_close(handle);
	return 0;
}

