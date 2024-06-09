#include <stdio.h>

int isLeapYear(int a)
{
  if ((a % 4 == 0 && a % 100 != 0) || (a % 400 == 0))
  {
    return 1;
  }
  return 0;
}

int main()
{
  int year;
  printf("Enter the year: ");
  scanf("%d", &year);
  if (isLeapYear(year))
  {
    printf("Yes.");
  }
  else
  {
    printf("No.");
  }

  return 0;
}