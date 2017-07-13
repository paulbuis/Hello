import std.stdio;

/* This hello function is made C compatable by both
 * declaring it so as to turn of D name mangling
 * and to declare it "nothrow" since standard C does not support
 * try/catch exception handling
 *
 * Without the try/catch in the body, the D compiler would
 * complain because printf is not declared as "nothrow"
 */

extern (C) void hello(int repeatCount) nothrow {
    try {
        foreach (i; 0..repeatCount) {
            printf("hello from D\n");
        }
    }
    catch (Throwable t) {
    }
}
