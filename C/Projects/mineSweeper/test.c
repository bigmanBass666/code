#include "game.h"

void menu()
{
    printf("1. Mine sweeping.\n");
    printf("0. Exit.\n");
}

void game()
{
    char mineArray[ROWS][COLUMNS] = {0};  // Store mine layout information.
    char sweepArray[ROWS][COLUMNS] = {0};  // Deposit mine clearance information.
    char fuckArray[ROWS][COLUMNS] = {0};

    initial(mineArray, ROWS, COLUMNS, 'O');
    initial(sweepArray, ROWS, COLUMNS, '*');
    initial(fuckArray, ROWS, COLUMNS, 'N');
    setMine(mineArray, ROW, COLUMN);
    
    // printf("-------原始--------\n");
    // printTwoDimensionalArray(mineArray, ROWS, COLUMNS);
    // printTwoDimensionalArray(sweepArray, ROWS, COLUMNS);
    // printf("--------display-------\n");
    display(sweepArray, ROW, COLUMN);
    display(mineArray, ROW, COLUMN);

    sweep(sweepArray, mineArray, fuckArray, ROW, COLUMN);
}

int main()
{
    int choice = 0;
    srand((unsigned int)time(NULL));
    do
    {
        menu();
        printf("Please choose: ");
        scanf("%d", &choice);

        switch (choice)
        {
        case 0:
            printf("\nExit successfully!");
            break;
        case 1:
            game();
            break;
        default:
            printf("\nInvalid input! Please try again.\n\n");
            break;
        }
    } while (choice);

    return 0;
}