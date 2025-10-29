
#include <stdint.h>
#include <string.h>
#include <klee/klee.h>
#include <stdlib.h>

void foo(int32_t x) {
    if (x > 1) {
        x = 2 * x;
    }
    if (x > 10) {
        abort();
    }
}

void bar(int32_t y, int32_t z) {
    if (100 > y) {
        foo(y);
    }
    if (z > 3) {
        abort();
    }
}

int main(void) {
    unsigned char buf[8];
    size_t r;
    int32_t a = 0, b = 0;

    // make r, a, b symbolic
    klee_make_symbolic(&r, sizeof(r), "r");
    // constrain r to possible fread values: 0..8
    klee_assume(r <= 8);

    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");

    if (r <= 4) {
        foo(a);
    } else {
        bar(a, b);
    }
    return 0;
}
