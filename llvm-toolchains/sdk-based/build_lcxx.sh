#!/bin/sh
cmake -S runtimes -B build\
    -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind"\
    -DCMAKE_INSTALL_PREFIX=../sdk/sysroot/usr\
    --toolchain /home/orlangur/myapps/pi/rpi/pi-toolchain.cmake
    #-DLLVM_ENABLE_PROJECTS="libcxx;libcxxabi"\
    #-DLIBCXXABI_USE_LLVM_UNWINDER=YES\
    #-DLLVM_ENABLE_PROJECTS="libcxx;libcxxabi"\
