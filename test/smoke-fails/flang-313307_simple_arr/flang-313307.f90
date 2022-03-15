program main
   use omp_lib
    integer:: nthreads_a(3)
    integer :: a1_a(4)
    !$omp target parallel map(tofrom: a1_a, nthreads_a)
         a1_a(1) = 1
         nthreads_a(1) = 4
    !$omp end target parallel
    write(*,*) a1_a
    write(*,*) nthreads_a

end program main
