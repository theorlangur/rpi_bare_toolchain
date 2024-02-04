set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_SYSROOT /home/orlangur/myapps/pi/rpi/sdk/sysroot)

set(LLVM_TABLEGEN /usr/bin/llvm-tblgen)
set(LLVM_TARGETS_TO_BUILD ARM)
set(LLVM_INCLUDE_UTILS OFF)
set(LLVM_INCLUDE_TESTS OFF)

#set(tools /home/devel/gcc-4.7-linaro-rpi-gnueabihf)
set(triple arm-linux-gnueabihf)
set(CMAKE_C_COMPILER /usr/bin/clang)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_ASM_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER /usr/bin/clang++)
set(CMAKE_CXX_COMPILER_TARGET ${triple})
set(LLVM_DEFAULT_TARGET_TRIPLE ${triple})
set(CMAKE_CROSSCOMPILING True)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib++-isystem${CMAKE_SYSROOT}/usr/include/${triple}/c++/8 -stdlib++-isystem${CMAKE_SYSROOT}/usr/include/c++/8 -isystem${CMAKE_SYSROOT}/usr/include/${triple} ")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fuse-ld=lld -L${CMAKE_SYSROOT}/usr/local/lib")

set(LLVM_USE_LINKER "lld")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
