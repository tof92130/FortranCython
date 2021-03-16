module gfunc_module
  implicit none
contains
  subroutine gfunc(x, n, m, a, b, c)
    !>>>>>>>>>>>>>>>>>>>>>>>
    real(8) , intent(in)  :: x
    integer , intent(in)  :: n, m
    real(8) , intent(in)  :: a(1:n)
    real(8) , intent(in)  :: b(1:m)
    real(8) , intent(out) :: c(1:n,1:m)
    integer               :: i, j
    !<<<<<<<<<<<<<<<<<<<<<<<
    !>>>>>>>>>>>>>>>>>>>>>>>
    print '("Bonjour Fortran")'
    !<<<<<<<<<<<<<<<<<<<<<<<
    !>>>>>>>>>>>>>>>>>>>>>>>
    do j=1,m
      do i=1,n
         c(i,j) = exp(-x * (a(i)**2 + b(j)**2))
      enddo
    enddo
    !<<<<<<<<<<<<<<<<<<<<<<<
    !>>>>>>>>>>>>>>>>>>>>>>>
    print '("Au revoir Fortran")'
    !<<<<<<<<<<<<<<<<<<<<<<<
    return
  end subroutine
end module
