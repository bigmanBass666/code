#include "game.h"

void menu()
{
    printf("1. Play chess.\n");
    printf("0. Exit.\n");
}

void game()
{
    printf("\nGame started!\n");
    char chessBoard[ROW][COLUMN] = {0};
    initializeChessboard(chessBoard, ROW, COLUMN);
    showChessboard(chessBoard, ROW, COLUMN);

    char result = ' ';
    while (1)
    {
        playerMove(chessBoard, ROW, COLUMN);
        showChessboard(chessBoard, ROW, COLUMN);
        result = judge(chessBoard, ROW, COLUMN);
        if (result == 'X' || result == 'e')
            break;

        computerMove(chessBoard, ROW, COLUMN);
        showChessboard(chessBoard, ROW, COLUMN);
        result = judge(chessBoard, ROW, COLUMN);
        if (result == 'O' || result == 'e')
            break;
    }

    switch (result)
    {
    case 'X':
        printf("\nThe player wins!\n\n");
        break;
    
    case 'O':
        printf("\nThe computer wins.\n\n");
        break;
    
    case 'e':
        printf("\nThe game was tied.\n\n");
        break;
    }
}

int main()
{
    int choice = 0;
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