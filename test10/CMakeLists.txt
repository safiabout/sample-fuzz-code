project(test10_crash)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -fno-omit-frame-pointer")
add_executable(test10_crash test10.c)
