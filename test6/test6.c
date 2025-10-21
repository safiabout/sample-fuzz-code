#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void q(int32_t x) {
    if(x>20) abort();
}
int main(int argc, char **argv){
    unsigned char buf[4] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0;
    memcpy(&x, buf, 4);

    if(x > 2) q(3*x-1);

    return 0;
}