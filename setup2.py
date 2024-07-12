from setuptools import setup, Extension
import numpy

# Get the NumPy include directory.
#numpy_include_dir = r"C:\Users\lyons\AppData\Local\Programs\Python\Python312\Lib\site-packages\numpy"
#python_includes = r"C:\Users\lyons\AppData\Local\Programs\Python\Python312\Lib\site-packages\numpy\_core\include"


try:
    numpy_include = numpy.get_include()
except AttributeError:
    numpy_include = numpy.get_numpy_include()

# include_dirs=[numpy_include_dir],
#include_dirs=[python_includes],

example_module = Extension('_test1',
                           sources=['test1_wrap.cxx', 'test1.cpp'],
                           include_dirs=[numpy_include],
                           )

setup(name='test1',
      version='0.1',
      author="Kelly Lyons",
      description="""Your module description""",
      ext_modules=[example_module],
      py_modules=["test1"],
      )
