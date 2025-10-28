project(test1_crash)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -fno-omit-frame-pointer")
add_executable(test1_crash test1.c)
