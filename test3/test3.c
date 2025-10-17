/* demo_fuzz_stdin.c
   Read up to 8 bytes from stdin and run the same logic.
*/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void callee(int32_t z) {
    if(z<5) abort();
}

void caller(int32_t x, int32_t y) {
    if ((x+y) > 10) {
        callee(x-y);
    }
}



int main(int argc, char **argv) {
    unsigned char buf[8] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0, y = 0;
    memcpy(&x, buf, 4);
    memcpy(&y, buf + 4, 4);

    caller(x, y);

    return 0;
}
