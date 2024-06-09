#include <stdio.h>

void swap(int* a, int* b)
{
    *a = *a ^ *b;
    *b = *a ^ *b;
    *a = *a ^ *b;
}

int main()
{
    int a = 9;
    int b = 10;
    printf("a: %d\nb: %d\n", a, b);
    swap(&a, &b);
    printf("a: %d\nb: %d", a, b);

    return 0;
}