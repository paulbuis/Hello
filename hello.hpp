//
// hello.hpp
//
// declare a function with name mangling turned off
// by using /extern "C"/ specifier
//
// This C++ header file should be #included both in the
// C++ files where the function is defined and the C++
// files where the function is used.

extern "C" void hello(int repeatCount);