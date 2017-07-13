/*
 * main.c
 *
 * Make sure definition and use of hello() agree
 * by #including a declaration.
 */
#include "hello.h"

int main(int argc, char** argv) {
    hello(3);
    return 0;
}
