/*
 * hello.h 
 *
 * This is a "header" file for C
 * which includes type declarations for
 * names defined in a separate file from
 * where the names are used.
 *
 * This header file should be #included both
 * in the file where the name  is defined
 * and in the file where the name is used to ensure
 * they match (C does not support function name overloading,
 * so this works for both function names and variable names).
 * Global variables should be declared as "extern" in the
 * header files to prevent mutliple name definitions in
 * the program (definitions allocate space, declarations just
 * specify type)
 */
void hello(int repeatCount);
