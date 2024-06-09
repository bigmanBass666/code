#include <stdio.h>

struct fuck
{
    int balance;
    int sodaCount;
    int bottlesCount;
};

int main()
{
    struct fuck shit;

    shit.balance = 20;
    shit.sodaCount = 0;
    shit.bottlesCount = 0;

    while (shit.balance >= 0)
    {
        if (shit.bottlesCount == 2)
        {
            shit.bottlesCount = 0;
            shit.sodaCount++;
            shit.bottlesCount++;
            if (!shit.balance)
                break;
        }

        shit.balance--;
        shit.sodaCount++;
        shit.bottlesCount++;
    }
    printf("Can buy this many sodas: %d", shit.sodaCount);

    return 0;
}