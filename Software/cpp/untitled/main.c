#include <stdio.h>

int main() {

    char Fuck = 0x2D;
    char* FU = &Fuck;

    printf("FU: %X", (int)*FU);
    return 0;
}