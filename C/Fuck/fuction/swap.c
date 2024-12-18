#include <stdio.h>

void swap(int* a, int* b)
{
    int c = *a;
    *a = *b;
    *b = c;
}

int main()
{
    int a = 1;
    int b = 2;
    printf("before swap: a = %d, b = %d\n", a, b);
    swap(&a, &b);
    printf("after swap: a = %d, b = %d", a, b);

    return 0;
}