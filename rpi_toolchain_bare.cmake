set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)
set(triple arm-none-eabihf)
set(bare_toolchain_path /home/orlangur/myapps/pi/apps/bare_toolchain)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})
set(CMAKE_ASM_COMPILER_TARGET ${triple})
set(CMAKE_SYSTEM_PROCESSOR arm1176jzf-s)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_NO_SYSTEM_FROM_IMPORTED 1)

#-DCMAKE_NO_SYSTEM_FROM_IMPORTED=1 -DENABLE_PRECOMPILED_HEADERS=OFF
set(CMAKE_CXX_FLAGS "-mcpu=arm1176jzf-s -fpic -ffreestanding -fno-exceptions -DPI_BARE -D_LIBCPP_HAS_NO_THREADS -isystem /usr/include/c++/v1 -isystem /usr/include")
#set(CMAKE_CXX_FLAGS "-mcpu=arm1176jzf-s -fpic -ffreestanding -fno-exceptions -DPI_BARE -I/usr/include -I/usr/include/bits -I${bare_toolchain_path} -I/usr/include/c++/13.2.1")
set(CMAKE_EXE_LINKER_FLAGS "-L${bare_toolchain_path} -T bare_link.ld -ffreestanding -nostdlib -fuse-ld=lld ${bare_toolchain_path}/boot.o")
