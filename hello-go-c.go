//
// hello-go-c.go
//
// type "go build hello-go-c.go" to produce an executable
// named hello-go-c from this Go Language source file
// 
// Note that normally the Go compiler is invoked on an entire
// directory rather than a single source file

package main

// comment lines immediately preceeding the /import "C"/
// are fed to a C compiler by the Go compiler
// and then linked with the Go compiler's output to form
// an executable. Normally, would use hello.h in the #include
// and Go builder would invoke C compiler on all .c files
// in the directory

// #include "hello.c"
import "C"

func main() {
	C.hello(C.int(3))
}
