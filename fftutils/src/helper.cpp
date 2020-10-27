
//
// Created by William.Hua on 2020/10/27.
//
#include "helper.h"
int destroy(fftw_plan plan)
{
    fftw_destroy_plan(plan);
    return 0;
}
