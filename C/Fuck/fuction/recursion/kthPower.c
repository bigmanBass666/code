#include <stdio.h>

int power(int n, int k)
{
    if (k == 1)
    {
        return n;
    }
    return power(n, k - 1) * n;
}

int main()
{
    int n = 2;
    int k = 10;
    printf("%d", power(n, k));

    return 0;
}