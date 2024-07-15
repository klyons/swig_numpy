import numpy as np
import pdb
import ctypes


import os
import numpy as np


vect1 = np.array([1, 2, 3, 4, 5], dtype=np.int16)

vect2 = np.array([1, 2, 3, 4, 5], dtype=np.int32)

vect3 = np.array([1.0, 2.0, 3.0, 4.0, 5.0], dtype=np.float64)

vect4 = np.array([[1, 2, 3], [4, 5, 6]], dtype=np.int32)


# import RLExample
import test

# takes an int
vectInt = test.ExRangeInt( 14 )
print(vectInt)

#takes an int
vectDbl = test.ExRangeDbl(10)
print(vectDbl)

# takes a vector
vectInt2 = test.ExRangeIntTwoWay(vect2)
print(vectInt)

# 
vectInt3 = test.ExRangeIntIn(vect2)
print(vectInt3)

print(vect4)
test.ExRangeIntTwoWay2D(vect4)
print(vect4)