/* demo_fuzz_stdin.c
   Read up to 8 bytes from stdin and run the same logic.
*/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void f(int32_t x) {
    if (x > 10) {
        abort();
    }
}

int main(int argc, char **argv) {
    unsigned char buf[8] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0, y = 0;
    memcpy(&x, buf, 4);
    memcpy(&y, buf + 4, 4);
    if(x > 2) f(x);
    if(y > 3) f(y);
    return 0;
}
