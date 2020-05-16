program CS4080
    ! Chan, Joon
    ! Group Project 4080
    implicit none

    !Declare

    !types integer, real, double precision(double)
    integer, parameter :: doubleP = selected_real_kind(p = 15)  !precision can be only 6, 15, or 18
    integer, parameter :: tP = selected_real_kind(p = 18)  !precision can be only 6, 15, or 18(kind = 10)  19-30 becomes kind = 16
    real :: a,b,c,d    ! default for real is 6 places of precision
    real(kind = doubleP) :: a1,b1,c1,d1   ! variables stored in double precision ! real is at least FP cannot have real 1 or 2 !kind 8(double) is 15 places of precision
    real(kind = tP) :: a2,b2,c2,d2 ! kind(1,2,4,8,10,16) kind 10 is 18 places of precision
    real(kind = 16) :: a3,b3,c3,d3 ! kind(1,2,4,8,10,16) kind 16 is 33 places of precision

    !Main

    !doing calculations using default storage(single precision floating point) (kind = 4)
    a = 10.0
    b = 3.0
    c = a/b
    d = 10.0/3.0 !interesting example I found where a(10.0) divided by b(3.0) is not the same as 10.0/3.0
    print *, 'Result using default stored variable a(10.0) divided by b(3.0) =', c
    print *, 'Result using default stored 10.0/3.0 =', d

    !doing calculations using double precision floating point (kind = 8)
    a1 = 10.0
    b1 = 3.0
    c1 = a1/b1
    d1 = 10.0/3.0
    print *, ' '
    print *, 'Result using double precision stored variable a(10.0) divided by b(3.0) =', c1
    print *, 'Result using double precision stored 10.0/3.0 =', d1

    !doing calculations using kind = 10
    a2 = 10.0
    b2 = 3.0
    c2 = a2/b2
    d2 = 10.0/3.0
    print *, ' '
    print *, 'Result using kind = 10 variable a(10.0) divided by b(3.0) =', c2
    print *, 'Result using kind = 10 10.0/3.0 =', d2

    !doing calculations using kind = 16
    a3 = 10.0
    b3 = 3.0
    c3 = a3/b3
    d3 = 10.0/3.0
    print *, ' '
    print *, 'Result using kind = 16 variable a(10.0) divided by b(3.0) =', c3
    print *, 'Result using kind = 16 10.0/3.0 =', d3

!    d1 = 10.0_8/3.0_8 !by using "_" you can assign a number or variable to the kind of a number but cannot do this to variables
!    print *, d1


end program CS4080
