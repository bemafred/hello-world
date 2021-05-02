#!/bin/bash
nasm -f elf64 -o ./obj/hello.o hello.s
ld -o ./bin/hello ./obj/hello.o
