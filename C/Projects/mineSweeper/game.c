#include "game.h"

void initial(char sweepArray[ROWS][COLUMNS], int rows, int columns, char str)
{
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            sweepArray[i][j] = str;
        }
    }
}

void display(char arr[ROWS][COLUMNS], int row, int column)
{
    printf("\n");
    for (int i = 0; i <= row; i++)
    {
        printf("%d   ", i);
    }
    printf("\n\n");

    for (int i = 1; i <= row; i++)
    {
        printf("%d   ", i);
        for (int j = 1; j <= column; j++)
        {
            printf("%c   ", arr[i][j]);
        }
        printf("\n\n");
    }
}

void setMine(char mineArray[ROWS][COLUMNS], int row, int column)
{
    int mineCount = COUNT;
    while (mineCount)
    {
        int x = rand() % row + 1;
        int y = rand() % column + 1;

        if (mineArray[x][y] == 'O')
        {
            mineArray[x][y] = 'X';
            mineCount--;
        }
    }
}

void printTwoDimensionalArray(char arr[ROWS][COLUMNS], int rows, int columns)
{
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            printf("%c  ", arr[i][j]);
        }
        printf("\n");
    }
}

int countAroundMine(char mineArray[ROWS][COLUMNS], int x, int y) // Count the number of mines around this coordinate.
{
    int aroundMineCount = 0;
    for (int i = -1; i < 2; i++)
    {
        for (int j = -1; j < 2; j++)
        {
            if (i == 0 && j == 0)
                continue;
            if (mineArray[x + i][y + j] == 'X')
                aroundMineCount++;
        }
    }
    return aroundMineCount;
}

void WriteCoordinate(char sweepArray[ROWS][COLUMNS], char mineArray[ROWS][COLUMNS], char fuckArray[ROWS][COLUMNS], int x, int y, int a, int b, int count)
{
    if (count == 0)
    {
        if (a != SHIT && b != SHIT)
        {
            for (int i = -1; i < 2; i++)
            {
                for (int j = -1; j < 2; j++)
                {
                    int m = a + i;
                    int n = b + j;
                    if (m * n == 0 || m * n % 10 == 0)
                        continue;
                    if (i == 0 && j == 0)
                        continue;
                    fuckArray[m][n] = 'Y';
                }
            }
        }
        // display(fuckArray, ROW, COLUMN);
        for (int i = -1; i < 2; i++)
        {
            for (int j = -1; j < 2; j++)
            {
                int m = x + i;
                int n = y + j;
                if (m * n == 0 || m * n % 10 == 0)
                    continue;
                if (i == 0 && j == 0)
                    continue;
                if (fuckArray[m][n] == 'Y' && a != SHIT && b != SHIT)
                    continue;
                count = countAroundMine(mineArray, m, n);
                sweepArray[m][n] = count + '0';
                WriteCoordinate(sweepArray, mineArray, fuckArray, m, n, x, y, count);
                if (count == 0)
                {
                    for (int i = -1; i < 2; i++)
                    {
                        for (int j = -1; j < 2; j++)
                        {
                            int m = x + i;
                            int n = y + j;
                            if (m * n == 0 || m * n % 10 == 0)
                                continue;
                            if (i == 0 && j == 0)
                                continue;
                            fuckArray[m][n] = 'N';
                        }
                    }
                }
            }
        }
    }
    return;
}

void sweep(char sweepArray[ROWS][COLUMNS], char mineArray[ROWS][COLUMNS], char fuckArray[ROWS][COLUMNS], int row, int column)
{
    int x = 0;
    int y = 0;
    int z = 1;
    int remainingNonMinesCount = 81 - COUNT;

    while (remainingNonMinesCount)
    {
        printf("If you want to mark a detected mine, add a \"0\" to its coordinates(Example: 1 3 0).\n");
        printf("Please enter the coordinate you want to sweep(Example: 1 3): ");
        scanf("%d %d %d", &x, &y, &z);

        if (x * y < 1 || x > 9 || y > 9) // Determine the coordinate legitimacy.
        {
            printf("Invalid coordinate! Please try again.\n");
            continue;
        }

        if (sweepArray[x][y] != '*') // Determine the coordinate legitimacy.
        {
            if (z == 0)
            {
                printf("This is clearly not a mine.\n\n");
                continue;
            }
            printf("You've already swept the coordinate: %d %d!\n", x, y);
            continue;
        }

        if (z == 0) // Mark the mine.
        {
            sweepArray[x][y] = '/';
            display(sweepArray, ROW, COLUMN);
            continue;
        }

        if (mineArray[x][y] == 'X') // If you find a mine.
        {
            printf("\nYou got blown up.\n");
            display(mineArray, ROW, COLUMN);
            break;
        }

        int aroundMineCount = countAroundMine(mineArray, x, y);
        WriteCoordinate(sweepArray, mineArray, fuckArray, x, y, SHIT, SHIT, aroundMineCount);

        sweepArray[x][y] = aroundMineCount + '0'; // Displays the number of mines around this coordinate.
        remainingNonMinesCount--;
        display(sweepArray, ROW, COLUMN);
        // display(mineArray, ROW, COLUMN);
    }
    if (!remainingNonMinesCount)
        printf("You have successfully cleared all mines!\n");
}