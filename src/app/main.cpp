#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#include "test.h"
}
#endif

int main(int args, const char *argv[]) {
    (void)args;
    (void)argv;

    printf("a+b=%d\n", my_add(5, 6));
    return 0;
}