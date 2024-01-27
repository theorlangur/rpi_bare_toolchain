#!/bin/sh
clang --target=arm-none-eabihf -mcpu=arm1176jzf-s -fpic -ffreestanding -c boot.S -o boot.o
