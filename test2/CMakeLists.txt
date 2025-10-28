project(test2_crash)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -fno-omit-frame-pointer")
add_executable(test2_crash test2.c)
