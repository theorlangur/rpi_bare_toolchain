#!/bin/sh
clang --target=arm-none-eabihf -march=armv6 -mcpu=arm1176jzf-s -fpic -ffreestanding -c boot.S -o boot.o
