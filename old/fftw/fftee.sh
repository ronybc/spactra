#!/bin/bash
#

astyle -A1 -t fftee.c

gcc -c -g fftee.c

#gcc -c -g -I/$HOME/include fftee.c >& compiler.txt
#if [ $? -ne 0 ]; then
#  echo "Errors compiling fftee.c."
#  exit
#fi
#rm compiler.txt
#
gcc fftee.o -lfftw3 -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading fftee.o."
  exit
fi
#
rm fftee.o
#
mv a.out fftee

