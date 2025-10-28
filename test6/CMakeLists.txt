project(test6_crash)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -fno-omit-frame-pointer")
add_executable(test6_crash test6.c)
