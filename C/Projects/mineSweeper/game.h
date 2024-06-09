#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#define ROW 9
#define COLUMN 9
#define COUNT 10
#define SHIT 99

#define ROWS ROW + 2
#define COLUMNS COLUMN + 2

void initial(char sweepArray[ROWS][COLUMNS], int rows, int columns, char str);

void display(char sweepArray[ROWS][COLUMNS], int row, int column);

void setMine(char mineArray[ROWS][COLUMNS], int row, int column);

void printTwoDimensionalArray(char arr[ROWS][COLUMNS], int rows, int columns);

int countAroundMine(char mineArray[ROWS][COLUMNS], int x, int y);

void sweep(char sweepArray[ROWS][COLUMNS], char mineArray[ROWS][COLUMNS], char fuckArray[ROWS][COLUMNS], int row, int column);