#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

/* demo_fuzz_stdin.c
   Read up to 8 bytes from stdin and run the same logic.
*/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void branch1(int32_t x) {
    if(x > 8) abort();
}

void branch2(int32_t x) {
    if (x < -10) {
        abort();
    }
}



int main(int argc, char **argv) {
    unsigned char buf[4] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0;
    memcpy(&x, buf, 4);

    if(x>0) branch1(x);
    else if(x < -5) branch2(x);
    

    return 0;
}
