#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
void middle(int32_t x){
    if(x>9) abort();
}
void start(int32_t x){
   int temp = x/2;
   if(x>0) middle(temp+4);
}

int main(int argc, char **argv){
    unsigned char buf[4] = {0};
    size_t r = fread(buf, 1, sizeof(buf), stdin);

    int32_t x = 0;
    memcpy(&x, buf, 4);

    start(x);

    return 0;
}