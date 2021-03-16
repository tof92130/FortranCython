module gfunc1_interface
  use iso_c_binding, only: c_double, c_int
  use gfunc_module, only: gfunc
  implicit none
contains
  subroutine c_gfunc(x, n, m, a, b, c) bind(c)
    !>>>>>>>>>>>>>>>>>>>>>>>
    real(c_double), intent(in)  :: x
    integer(c_int), intent(in)  ::  n, m
    real(c_double), intent(in)  :: a(1:n)
    real(c_double), intent(in)  :: b(1:m)
    real(c_double), intent(out) :: c(1:n,1:m)
    !<<<<<<<<<<<<<<<<<<<<<<<
    !>>>>>>>>>>>>>>>>>>>>>>>
    call gfunc(x, n, m, a, b, c)
    !<<<<<<<<<<<<<<<<<<<<<<<
    return
  end subroutine
end module
