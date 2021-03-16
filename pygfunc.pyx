from numpy import linspace, empty
from numpy cimport ndarray as ar


cdef extern from "pygfunc.h":
    void c_gfunc(double* a, int* n, int* m, double* a, double* b, double* c)

def fortran(double x, double a=-10.0, double b=10.0, int n=100):
    cdef:
        ar[double] ax = linspace(a, b, n)
        ar[double,ndim=2] c = empty((n, n), order='F')
    c_gfunc(&x, &n, &n, <double*> ax.data, <double*> ax.data, <double*> c.data)
    return c
