#include <stdio.h>
#include <math.h>

int countDigits(int n)
{
    int digits = 1;
    while (n / 10)
    {
        digits++;
        n /= 10;
    }
    return digits;
}

int digitsSum(int n, int k)
{
    if (n < 10)
        return pow(n, k);
    return digitsSum(n / 10, k) + pow(n % 10, k);
}

int isNarcissisticNumber(int n)
{
    int digits = countDigits(n);
    int sum = digitsSum(n, digits);
    if (sum == n)
        return 1;
    return 0;
}

int main()
{
    for (int i = 0; i <= 100000; i++)
    {
        if (isNarcissisticNumber(i))
            printf("%d ", i);
    }

    return 0;
}