#pragma once
// vecTest.h
//this defines a custom object for us to pass in using python
struct VecTest {
    double x, y, z;
    VecTest(double x = 0.0, double y = 0.0, double z = 0.0) : x(x), y(y), z(z) {}
};

//this passes in a custum object from python and allows us to modify it in C++
VecTest process_vector(const VecTest& vec) {
    VecTest new_vec;
    new_vec.x = vec.x + 1;
    new_vec.y = vec.y + 1;
    new_vec.z = vec.z + 1;

    return new_vec;  // Return the new VecTest object, not the type VecTest
}
