/*
 * adapt-f-c.c 
 *
 */
#include "hello.h"

/* This hello function is callable by Fortran, note the underscore following
 * the name and the fact that the argument is a pointer to an integer.
 * It calls a hello function equivalent to the one in hello.c which
 * expects the argument to be an integer by dereferencing the pointer.
 */
void hello_(int *pRepeatCount) {
    hello(*pRepeatCount);
}
