set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)
#eabi
#set(triple arm-none-eabi)
#set(builtins clang_rt.builtins-arm)
#eabihf
set(triple arm-none-eabihf)
set(builtins clang_rt.builtins-armhf)

set(bare_toolchain_path /home/orlangur/myapps/pi/apps/bare_toolchain)
set(pi_sdk /home/orlangur/myapps/pi/rpi/sdk/sysroot)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})
set(CMAKE_ASM_COMPILER_TARGET ${triple})
set(CMAKE_SYSTEM_PROCESSOR arm1176jzf-s)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_NO_SYSTEM_FROM_IMPORTED 1)

#set(CMAKE_CXX_FLAGS "-mcpu=arm1176jzf-s -fpic -ffreestanding -fno-exceptions -DPI_BARE -D_LIBCPP_HAS_NO_THREADS -isystem /usr/include/c++/v1 -isystem /usr/include")
#-S -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -fverbose-asm
set(CMAKE_CXX_FLAGS "-g -mcpu=arm1176jzf-s -fpic -ffreestanding -fno-exceptions -DPI_BARE -D_LIBCPP_HAS_NO_THREADS -isystem ${pi_sdk}/usr/include/c++/v1 -isystem ${pi_sdk}/usr/include -isystem ${pi_sdk}/usr/include/arm-linux-gnueabihf")
set(CMAKE_EXE_LINKER_FLAGS "-L${bare_toolchain_path}/compiler-rt -l${builtins} -L${bare_toolchain_path} -T bare_link.ld -ffreestanding -nostdlib -fuse-ld=lld ${bare_toolchain_path}/boot.o")
