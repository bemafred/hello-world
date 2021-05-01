#!/bin/bash
nasm -f elf64 -o ./build/hello.o hello.s
ld -o ./build/hello ./build/hello.o
