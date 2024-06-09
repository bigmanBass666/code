#include <stdio.h>

int main()
{
  int score, mark;
  printf("Enter the score:");
  scanf('%d', &score);
  mark = score < 0 || score > 100 ? -1 : score / 10;


  return 0;
}