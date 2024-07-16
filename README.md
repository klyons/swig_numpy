# swig_numpy
python 3.12 with numpy 2.0
run: (to compile the c)

swig -c++ -python test.i

python setup.py build_ext --inplace

then test the compilation with 

python test.py
