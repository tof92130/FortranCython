from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
from Cython.Build import cythonize


import numpy as np

from os import system

# compile the fortran modules without linking
fortran_mod_comp = '$FC  gfunc.f90   -c -o gfunc.o   -O3 -fPIC'
print(fortran_mod_comp)
system(fortran_mod_comp)

shared_obj_comp  = '$FC pygfunc.f90 -c -o pygfunc.o -O3 -fPIC'
print(shared_obj_comp)
system(shared_obj_comp)


mes_extensions = Extension(
    name="pygfunc",
    sources=["pygfunc.pyx"],
    #extra_compile_args=['-fPIC', '-O3'],
    extra_link_args=['gfunc.o', 'pygfunc.o'],
    library_dirs=["."],
    libraries = [],           # need to include gfortran as a library
    include_dirs=[".",np.get_include()]
)

setup(
    name="pygfunc",
    version="0.1",
    ext_modules=cythonize([mes_extensions])
)
