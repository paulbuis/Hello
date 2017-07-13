#include <iostream>

/* Try commenting out the tokens /extern "C"/
 * on the declaration of the hello function
 * and compiling it with "gcc -c", then use "nm"
 * to look at the name of the symbol for the function.
 * The function name has been "mangled." Note that the
 * D Programming Language uses a different mangling scheme.
 *
 * Try linking it with main.c or main.cpp (one at a time)
 * with and without the same tokens remived from main.cpp.
 *
 * Challenge: try calling it directly from main.c without
 * using /extern "C"/ here by manually mangling the name.
 */

extern "C" void hello(int repeatCount) {
    for (int i=0; i<repeatCount; i++)
    std::cout << "hello from C++" << std::endl;
}
