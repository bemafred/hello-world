#!/bin/bash
as -o ./obj/hello.o hello.s
ld -o ./bin/hello ./obj/hello.o
