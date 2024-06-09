#include <stdio.h>

int main()
{
    int n = 7;
    for (int i = 1; i <= n; i++)
    {
        for (int k = 0; k < n - i; k++)
        {
            printf("  ");
        }
        for (int j = 0; j < 2 * i - 1; j++)
        {
            printf("● ");
        }
        printf("\n");
    }

    for (int i = 1; i < n; i++)
    {
        for (int k = 0; k < i; k++)
        {
            printf("  ");
        }
        for (int j = 0; j < 2*n - 3 - 2*(i-1); j++)
        {
            printf("● ");
        }
        printf("\n");
    }

    return 0;
}