
//
// Created by William.Hua on 2020/10/27.
//
#include "fftutils/fftutils.h"
int main()
{
    const int N = 1024;
    fftw_complex* in;
    in = (fftw_complex*) fftw_malloc(sizeof(fftw_complex)*N);
    fftw_complex* out = doFFT(in, N);
    return 0;
}