#include <stdio.h>

int DigitSum(int n)
{
    if (n < 10)
    {
        return n % 10;
    }
    return DigitSum(n/10) + n%10;
}

int main()
{
    printf("%d", DigitSum(1729));

    return 0;
}