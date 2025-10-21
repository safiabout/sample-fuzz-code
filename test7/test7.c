#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void inner(int32_t x) {
    if(x>15&&x<30) abort();
}
void outer(int32_t x, int32_t y) {
    if(x>0&&y>0) inner(x+y);
}
int main(int argc, char **argv){
    unsigned char buf[8] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0, y=0;
    memcpy(&x, buf, 4);
    memcpy(&y, buf+4, 4);

    outer(x, y);

    return 0;
}