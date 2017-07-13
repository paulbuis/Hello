c
c hello.f
c
c older fortran compilers did not accept "free form"
c source code and reserved the first 6 columns for 
c comment markers and/or numeric labels
c
c Note the label marking the end of the loop matches
c the label used in first line of the loop
c
c Older Fortran compilers are not case senstive and much
c Fortran was written in all upper case
c
      subroutine hello(n)
         do 10 i=1,n
            print*, "hello from FORTRAN"
  10     continue
      end
