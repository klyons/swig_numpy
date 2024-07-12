%module test1

%{
    #define SWIG_FILE_WITH_INIT
    #include "test1.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}


%apply (int* ARGOUT_ARRAY1, int DIM1) {(int* rangevec, int n)}
extern void ExRangeInt(int *rangevec, int n);

%apply (double* ARGOUT_ARRAY1, int DIM1) {(double* rangevec2, int n)}
extern void ExRangeDbl(double *rangevec2, int n);

%apply (int* INPLACE_ARRAY1, int DIM1) {(int* myptr, int n)}
extern void ExRangeIntTwoWay(int *myptr, int n);

%apply (int* IN_ARRAY1, int DIM1) {(int* myptr, int n)}
extern int ExRangeIntIn(int *myptr, int n);

//use INPLACE_ARRAY2 for sending in a python2d numpy array and returning a 2d array
%apply (int* INPLACE_ARRAY2, int DIM1, int DIM2) {(int* mymatrix, int nrows, int ncols)}
extern void ExRangeIntTwoWay2D(int* mymatrix, int nrows, int ncols);