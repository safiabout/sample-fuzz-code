#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void rec(int32_t x){
   if(x>2) rec(x-1);
   if(x<2) abort();
}
int main(int argc, char **argv){
    unsigned char buf[4] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0;
    memcpy(&x, buf, 4);

    rec(x);

    return 0;
}