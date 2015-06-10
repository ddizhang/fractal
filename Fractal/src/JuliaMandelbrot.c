#include <R.h>
#include <math.h>


int convItr(double zRe, double zIm, double cRe, double cIm, int maxItr, double radius)
{
    int i = 0;
    double r = 0;
    while (i < maxItr & r <= radius) {
        double zReN = pow(zRe, 2) - pow(zIm, 2) + cRe;
        zIm = 2*zRe*zIm + cIm;
        zRe = zReN;
        r = sqrt( pow(zIm, 2) + pow(zRe, 2) );
        i++;
    }
    return i;
}



void julia(int * pix, double * centerRe, double * centerIm, double * len, double *cRe, double *cIm,
           int * mat, int *maxItr, double *radius)
{
    double delta = *len / *pix;
    double re = *centerRe - (*len) / 2;
    for (int i = 0; i < *pix; i++) {
        double im = *centerIm + (*len) / 2;
        for (int j = 0; j < *pix; j++) {
            mat[*pix * i + j] = convItr(re, im, *cRe, *cIm, *maxItr, *radius);
            im = im - delta;
        }
        re = re + delta;
    }
}


void mandelbrot(int * pix, double * centerRe, double * centerIm, double * len,
                int * mat, int * maxItr, double * radius)
{
    double delta = *len / *pix;
    double re = *centerRe - (*len) / 2;
    for (int i = 0; i < *pix; i++) {
        double im = *centerIm + (*len) / 2;
        for (int j = 0; j < *pix; j++) {
            mat[*pix * i + j] = convItr(0, 0, re, im, *maxItr, *radius);
            im = im - delta;
        }
        re = re + delta;
    }
}

