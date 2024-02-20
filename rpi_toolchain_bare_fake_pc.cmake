set(CMAKE_CXX_COMPILER /home/orlangur/myapps/cpp/toolchains/llvm18/bin/clang++)
set(CMAKE_C_COMPILER /home/orlangur/myapps/cpp/toolchains/llvm18/bin/clang)
set(LINKER_LLD /home/orlangur/myapps/cpp/toolchains/llvm18/bin/lld)

set(CMAKE_CXX_FLAGS "-fno-exceptions -DPI_BARE -DPI_BARE_FAKE -stdlib=libc++ -fuse-ld=lld")
