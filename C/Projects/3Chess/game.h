#include <stdio.h>

#define ROW 5
#define COLUMN 5

void initializeChessboard(char chessBoard[ROW][COLUMN], int row, int column);

void showChessboard(char chessBoard[ROW][COLUMN], int row, int column);

void playerMove(char chessBoard[ROW][COLUMN], int row, int column);

void computerMove(char chessBoard[ROW][COLUMN], int row, int column);

char judge(char chessBoard[ROW][COLUMN], int row, int column);

char Column(char chessBoard[ROW][COLUMN], int row, int column);

char Row(char chessBoard[ROW][COLUMN], int row, int column);

char diagonal_top_left(char chessBoard[ROW][COLUMN], int row, int column);

char diagonal_top_right(char chessBoard[ROW][COLUMN], int row, int column);