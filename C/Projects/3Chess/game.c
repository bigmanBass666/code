#include <time.h>
#include "game.h"

void initializeChessboard(char chessBoard[ROW][COLUMN], int row, int column)
{
    for (int i = 0; i < row; i++)
    {
        for (int j = 0; j < column; j++)
        {
            chessBoard[i][j] = ' ';
        }
    }
}

void showChessboard(char chessBoard[ROW][COLUMN], int row, int column)
{
    printf("\n");
    for (int i = 0; i < row; i++)
    {
        for (int j = 0; j < column - 1; j++)
        {
            printf(" %c |", chessBoard[i][j]);
        }
        printf(" %c \n", chessBoard[i][column - 1]);

        if (i != row - 1)
        {
            for (int k = 0; k < column - 1; k++)
            {
                printf("---|");
            }

            printf("---\n");
        }
    }
}

void playerMove(char chessBoard[ROW][COLUMN], int row, int column)
{
    int x = 0;
    int y = 0;

    while (1)
    {
        printf("\nPlayers(X) move chess in this format \"1 3\": ");
        scanf("%d %d", &x, &y);
        if (chessBoard[x - 1][y - 1] == ' ')
        {
            chessBoard[x - 1][y - 1] = 'X';
            break;
        }
        printf("Invalid piece index: %d %d. Please try again.\n", x, y);
    }
}

void computerMove(char chessBoard[ROW][COLUMN], int row, int column)
{
    srand((unsigned int)time(NULL));
    while (1)
    {
        int x = rand() % row;
        int y = rand() % column;
        if (chessBoard[row / 2][column / 2] == ' ')
        {
            printf("\nComputer(O) move: 2 2\n");
            chessBoard[row / 2][column / 2] = 'O';
            break;
        }
        
        if (chessBoard[x][y] == ' ')
        {
            printf("\nComputer(O) move: %d %d\n", x + 1, y + 1);
            chessBoard[x][y] = 'O';
            break;
        }
    }
}

char judge(char chessBoard[ROW][COLUMN], int row, int column)
{
    char result = Row(chessBoard, row, column);
    if (result != '\0')
        return result;

    result = Column(chessBoard, row, column);
    if (result != '\0')
        return result;

    result = diagonal_top_left(chessBoard, row, column);
    if (result != '\0')
        return result;

    result = diagonal_top_right(chessBoard, row, column);
    if (result != '\0')
        return result;

    for (int i = 0; i < row; i++)
    {
        for (int j = 0; j < column; j++)
        {
            if (chessBoard[i][j] == ' ')
                return 'c';
        }
    }
    return 'e';
}

char Row(char chessBoard[ROW][COLUMN], int row, int column)
{
    for (int i = 0; i < row; i++)
    {
        int flag = 1;
        for (int j = 1; j < column; j++)
        {
            if (chessBoard[i][0] == ' ')
            {
                flag = 0;
                break;
            }
            if (chessBoard[i][j] != chessBoard[i][0])
            {
                flag = 0;
                break;
            }
        }
        if (flag == 1)
            return chessBoard[i][0];
    }
    return '\0';
}

char Column(char chessBoard[ROW][COLUMN], int row, int column)
{
    for (int i = 0; i < column; i++)
    {
        int flag = 1;
        for (int j = 1; j < row; j++)
        {
            if (chessBoard[0][i] == ' ')
            {
                flag = 0;
                break;
            }
            if (chessBoard[j][i] != chessBoard[0][i])
            {
                flag = 0;
                break;
            }
        }
        if (flag == 1)
            return chessBoard[0][i];
    }
    return '\0';
}

// from top left to bottom right
char diagonal_top_left(char chessBoard[ROW][COLUMN], int row, int column)
{
    for (int i = 1; i < row; i++)
    {
        if (chessBoard[0][0] == ' ')
            return '\0';
        if (chessBoard[i][i] != chessBoard[0][0])
            return '\0';
    }
    return chessBoard[0][0];
}

// from top right to bottom left
char diagonal_top_right(char chessBoard[ROW][COLUMN], int row, int column)
{
    for (int i = row - 2; i >= 0; i--)
    {
        if (chessBoard[0][column - 1] == ' ')
            return '\0';
        if (chessBoard[row - 1 - i][i] != chessBoard[0][column - 1])
            return '\0';
    }
    return chessBoard[0][column - 1];
}