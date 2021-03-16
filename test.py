from pygfunc import fortran

print("fortran=",fortran(1., a=-1., b=1., n=4))


import numpy as np
a = np.linspace(-1, 1, 4)**2
A, B = np.meshgrid(a, a, copy=False)
print("python=",np.exp(-(A + B)))
