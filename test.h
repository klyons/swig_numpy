#ifndef TEST_H
#define TEST_H
#include<vector>
#include <cstdint>
//#include <pybind11/pybind11.h>

using namespace std;

extern void ExRangeInt(int* rangevec, int n);

extern void ExRangeDbl(double* rangevec, int n);

extern void ExRangeIntTwoWay(int* rangevec, int n);

extern int ExRangeIntIn(int* myptr, int n);

extern void ExRangeIntTwoWay2D(int* mymatrix, int nrows, int ncols);

#endif