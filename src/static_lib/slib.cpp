#include "slib.h"
#include <stdio.h>

int bar() {
    printf("%s\n", __FUNCTION__);
    return 0;
}