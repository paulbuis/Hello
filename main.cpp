//
// main.cpp - C++ program to call the hello function
//
// #include to make sure use here matches with declaration
// If same header file included in definition file,
// we have reason to believe they will match
//
#include "hello.hpp"

int main(int argc, char** argv) {
    hello(3);

    return 0;
}
