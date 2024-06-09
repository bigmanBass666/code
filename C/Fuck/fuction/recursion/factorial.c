#include <stdio.h>

int factorial(int n)
{
    if (n == 1)
    {
        return 1;
    }
    return factorial(n - 1) * n;
}

int main()
{
    int n = 5;
    printf("The result of recursion: %d\n", factorial(n));

    int product = 1;
    for (int i = 1; i <= n; i++)
    {
        product *= i;
    }
    printf("The result of circulation: %d", product);

    return 0;
}