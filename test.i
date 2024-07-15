%module test

%{
    #define SWIG_FILE_WITH_INIT
    #include "test.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}

//here the ARGOUT_ARRAY1 will return a one dimesional array 
%apply (int* ARGOUT_ARRAY1, int DIM1) {(int* rangevec, int n)}
extern void ExRangeInt(int *rangevec, int n);
%clear (int* rangevec, int n);

// here we demonstrate how to clear the variables used in the typemap to prevent confusion
%apply (double* ARGOUT_ARRAY1, int DIM1) {(double* rangevec2, int n)}
extern void ExRangeDbl(double *rangevec2, int n);
%clear (double* rangevec2, int n);

%apply (int* INPLACE_ARRAY1, int DIM1) {(int* myptr, int n)}
extern void ExRangeIntTwoWay(int *myptr, int n);
%clear (int *myptr, int n);

//Typemap IN_ARRAY1 will modify a 1d array inplace.  
%apply (int* IN_ARRAY1, int DIM1) {(int* myptr, int n)}
extern int ExRangeIntIn(int *myptr, int n);
%clear (int *myptr, int n);

//Typemap INPLACE_ARRAY2 for inputting a 2D array and modifying in place.  
%apply (int* INPLACE_ARRAY2, int DIM1, int DIM2) {(int* mymatrix, int nrows, int ncols)}
extern void ExRangeIntTwoWay2D(int* mymatrix, int nrows, int ncols);
%clear (int* mymatrix, int nrows, int ncols);