
//
// Created by William.Hua on 2020/10/27.
//
#include "fftutils/fftutils.h"
#include "helper.h"
#include <fftw3.h>

fftw_complex* doFFT(fftw_complex* in, int n)
{
    fftw_complex *out;
    fftw_plan my_plan;
    out = (fftw_complex*) fftw_malloc(sizeof(fftw_complex)*n);
    my_plan = fftw_plan_dft_1d(n, in, out, FFTW_FORWARD, FFTW_ESTIMATE);

    destroy(my_plan);
    return out;
}