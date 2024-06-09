#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <math.h>

int isPrimeNumber(int a)
{
    for (int j = 2; j <= sqrt(a); j++)
    {
        if (a % j == 0)
        {
            return 0;
        }
    }
    return 1;
}

int main()
{
    int a = 0;
    for (int i = 101; i < 200; i += 2)
    {
        if (isPrimeNumber(i))
        {
            a++;
            printf("%d ", i);
        }
    }
    printf("\ncount = %d", a);
    return 0;
}
