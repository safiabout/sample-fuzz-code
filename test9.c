#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

void a(int32_t x, int32_t y){
   if(2*x + y >20) b(x,y);
}
void b(int32_t x, int32_t y){
   if(x>5&&y>3) abort();
}
   int main(int argc, char **argv){
    unsigned char buf[8] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0, y=0;
    memcpy(&x, buf, 4);
    memcpy(&y, buf+4, 4);

    a(x, y);

    return 0;
}