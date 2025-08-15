00001 /*
00002  *  This extra small demo sends a random samples to your speakers.
00003  */
00004 
00005 #include "../include/asoundlib.h"
00006 
00007 static char *device = "default";                        /* playback device */
00008 
00009 snd_output_t *output = NULL;
00010 unsigned char buffer[16*1024];                          /* some random data */
00011 
00012 int main(void)
00013 {
00014         int err;
00015         unsigned int i;
00016         snd_pcm_t *handle;
00017         snd_pcm_sframes_t frames;
00018 
00019         for (i = 0; i < sizeof(buffer); i++)
00020                 buffer[i] = random() & 0xff;
00021 
00022         if ((err = snd_pcm_open(&handle, device, SND_PCM_STREAM_PLAYBACK, 0)) < 0) {
00023                 printf("Playback open error: %s\n", snd_strerror(err));
00024                 exit(EXIT_FAILURE);
00025         }
00026         if ((err = snd_pcm_set_params(handle,
00027                                       SND_PCM_FORMAT_U8,
00028                                       SND_PCM_ACCESS_RW_INTERLEAVED,
00029                                       1,
00030                                       48000,
00031                                       1,
00032                                       500000)) < 0) {   /* 0.5sec */
00033                 printf("Playback open error: %s\n", snd_strerror(err));
00034                 exit(EXIT_FAILURE);
00035         }
00036 
00037         for (i = 0; i < 16; i++) {
00038                 frames = snd_pcm_writei(handle, buffer, sizeof(buffer));
00039                 if (frames < 0)
00040                         frames = snd_pcm_recover(handle, frames, 0);
00041                 if (frames < 0) {
00042                         printf("snd_pcm_writei failed: %s\n", snd_strerror(err));
00043                         break;
00044                 }
00045                 if (frames > 0 && frames < (long)sizeof(buffer))
00046                         printf("Short write (expected %li, wrote %li)\n", (long)sizeof(buffer), frames);
00047         }
00048 
00049         snd_pcm_close(handle);
00050         return 0;
00051 }

