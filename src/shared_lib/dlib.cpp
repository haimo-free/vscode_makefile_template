#include "dlib.h"
#include <stdio.h>

int foo() {
    printf("%s\n", __FUNCTION__);
    return 0;
}