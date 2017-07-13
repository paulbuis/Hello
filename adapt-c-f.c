/*
 * adapt-c-f.c 
 *
 * The hello function here is callable by C and will call the Fortran hello function.
 * Note the underscore at the end of the name, and the use of the address-of operator
 * to pass a reference to  the Fortran function
 */
extern void hello_(int*);

void hello(int repeatCount) {
    hello_(&repeatCount);
}