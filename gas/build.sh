#!/bin/bash
as -o ./build/hello.o hello.s
ld -o ./build/hello ./build/hello.o
