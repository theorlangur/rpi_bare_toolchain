set(CMAKE_CXX_COMPILER clang++-17)
set(CMAKE_C_COMPILER clang-17)

set(CMAKE_CXX_FLAGS "-fno-exceptions -DPI_BARE -DPI_BARE_FAKE -stdlib=libc++")
