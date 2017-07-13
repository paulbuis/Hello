CC = gcc
FC = gfortran
DC = dmd
CPP = g++

CFLAGS = -O
FFLAGS = -O
DFLAGS = -O
CPPFLAGS = -O

#
# Rules to create object files from source files
# in a particular language. These rules differ from
# the standard ones by including the source language name
# at the end of the base of the object file name.
# $() syntax uses names defined above
# $@ stands for the target file name
# $< stands for the source file name
#

%-c.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@
%-f.o: %.f
	$(FC) -c $(FFLAGS) $< -o $@
%-d.o: %.d
	$(DC) -c $(DFLAGS) $< -of=$@
%-cpp.o: %.cpp
	$(CPP) -c $(CPPFLAGS) $< -o $@

OBJS=main-c.o main-d.o main-cpp.o main-f.o hello-c.o hello-d.o hello-cpp.o hello-f.o adapt-c-f.o adapt-f-c.o
ALL=hello-c-c hello-cpp-c hello-c-cpp hello-d-d hello-d-c hello-c-d hello-go-c hello-f-f hello-f-c hello-c-f

all: $(ALL)

#
# Below are specific dependencies between executables
# and the object files they depend on, followed by
# tabbed line with a commend to run the needed linker
#

hello-c-c: main-c.o hello-c.o
	$(CC) -o $@ $(CFLAGS) main-c.o hello-c.o

hello-c-cpp: main-c.o hello-cpp.o
	$(CPP) -o $@ $(CPPFLAGS) main-c.o hello-cpp.o

hello-cpp-c: main-cpp.o hello-c.o
	$(CPP) -o $@ main-cpp.o hello-c.o

hello-d-d: main-d.o hello-d.o
	$(DC) -of=$@ main-d.o hello-d.o

hello-c-d: main-c.o hello-d.o
	$(DC) -of=$@ main-c.o hello-d.o

hello-d-c: main-d.o hello-c.o
	$(DC) -of=$@ main-d.o hello-c.o

hello-go-c: hello-go-c.go hello.c
	go build hello-go-c.go

hello-f-f: main-f.o hello-f.o
	$(FC) -o $@ main-f.o hello-f.o

hello-c-f: main-c.o adapt-c-f.o hello-f.o
	$(FC) -o $@ main-c.o adapt-c-f.o hello-f.o

hello-f-c: main-f.o adapt-f-c.o hello-c.o
	$(FC) -o $@ main-f.o adapt-f-c.o hello-c.o



clean:
	rm -rf $(OBJS) $(ALL)

#
# Below are dependencies between object files and source files.
# If source is newer than object, the source will be recompiled
# following the rules at the top of this file
#

main-c.o: main.c hello.h
main-d.o: main.d
main-cpp.o: main.cpp hello.hpp
main-f.o: main.f

adapt-c-f.o: adapt-c-f.c
adapt-f-c.o: adapt-f-c.c hello.h

hello-c.o: hello.c hello.h
hello-d.o: hello.d
hello-cpp.o: hello.cpp hello.hpp
hello-f.o: hello.f

