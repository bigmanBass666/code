#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int isLeapYear(int a)
{
    if ((a % 4 == 0 && a % 100 != 0) || (a % 400 == 0))
    {
        return 1;
    }
    return 0;
}

int main()
{
    int count = 0;
    for (int i = 1000; i <= 2000; i++)
    {
        if (isLeapYear(i))
        {
            count++;
            printf("%d ", i);
        }
    }
    printf("\nsum of leap year: %d", count);
    return 0;
}