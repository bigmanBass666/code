#include <stdio.h>

int main()
{
    int balance = 20;
    int soda = balance;
    int empty = balance;

    while (empty >= 2)
    {
        empty -= 2;
        soda++;
        empty++;
    }
    printf("Can buy this many sodas: %d", soda);

    return 0;
}