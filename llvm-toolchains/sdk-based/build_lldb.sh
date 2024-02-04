#!/bin/sh
cmake -S llvm -B buildlldb\
    -DLLVM_ENABLE_PROJECTS="clang;lldb"\
    -DLIBCXXABI_USE_LLVM_UNWINDER=YES\
    -DLLVM_TARGETS_TO_BUILD="ARM"\
    --toolchain /home/orlangur/myapps/pi/rpi/pi_libcxx.cmake
    #-DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind"\
    #-DCMAKE_INSTALL_PREFIX=../sdk/sysroot/usr\
