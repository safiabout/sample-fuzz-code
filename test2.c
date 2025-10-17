/* demo_fuzz_stdin.c
   Read up to 8 bytes from stdin and run the same logic.
*/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void c(int32_t x) {
    if(x>10) abort();
}

void b(int32_t x) {
    if(x<10) c(2*x);
}
void a(int32_t x) {
    if (x > 1) {
        b(x-2);
    }
}



int main(int argc, char **argv) {
    unsigned char buf[4] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0;
    memcpy(&x, buf, 4);
    a(x);

    return 0;
}
