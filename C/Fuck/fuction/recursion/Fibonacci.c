#include <stdio.h>

int Fibonacci(int n)
{
    if (n < 3)
    {
        return 1;
    }
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}

int main()
{
    int n = 8;
    printf("The result of recursion: %d\n", Fibonacci(n));

    int a = 1;
    int b = 1;
    int c = 1;
    while (n > 2)
    {
        c = a + b;
        a = b;
        b = c;
        n--;
    }
    printf("The result of circulation: %d", c);
    
    return 0;
}