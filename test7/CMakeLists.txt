project(test7_crash)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -fno-omit-frame-pointer")
add_executable(test7_crash test7.c)
