#include "test.h"


void ExRangeInt(int* rangevec, int n)
{
    int i;

    for (i = 0; i < n; i++)
        rangevec[i] = i;
}

void ExRangeDbl(double* rangevec, int n)
{
    int i;

    for (i = 0; i < n; i++)
        rangevec[i] = 2.4;
}

void ExRangeIntTwoWay(int* rangevec, int n)
{
    int i;

    for (i = 0; i < n; i++)
        rangevec[i] = rangevec[i] + i;
}

int ExRangeIntIn(int* myptr, int n)
{
    int nValue = 0;
    int i;

    for (i = 0; i < n; i++) {
        nValue += myptr[i] + i;
    }

    return(nValue);
}

void ExRangeIntTwoWay2D(int* mymatrix, int nrows, int ncols)
{
    int i, j;

    for (i = 0; i < nrows; i++)
    {
        for (j = 0; j < ncols; j++)
        {
            mymatrix[i * ncols + j] = mymatrix[i * ncols + j] + i + j;
        }
    }
}
