#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/// @brief a random number from startNum to endNum.
/// @param startNum
/// @param endNum
int get_random_number(int startNum, int endNum)
{
  return rand() % (endNum - startNum + 1) + startNum;
}

// TODO
/// @brief Compare the size of two numbers.
/// @param guessChance The total number of guesses.
/// @param compareNum
/// @param guessChance
void judge(int constNum, int compareNum, int guessChance)
{
  int guessCount = 0;
}

int main(void)
{
  srand(time(NULL));
  int isRight, computerNum, userNum, guessCount = 0, guessChance = 3, startNum = 1, endNum = 10;
  computerNum = get_random_number(startNum, endNum);
  printf("random num: %d\n", computerNum);

  // while (1)
  // {
  // }

  do
  {
    guessChance--;
    guessCount++;
    printf("Enter the number you wanna guess (%d ~ %d): ", startNum, endNum);
    scanf("%d", &userNum);

    if (userNum > computerNum)
    {
      printf("Wrong! Too big! You have %d more chances.\n", guessChance);
    }
    else if (userNum < computerNum)
    {
      printf("Wrong! Too small! You have %d more chances.\n", guessChance);
    }
    else
    {
      isRight = 1;
      printf("Right! guessCount: %d\n", guessCount);
      break;
    }
  } while (guessChance > 0);

  if (!isRight)
  {
    printf("You're not right. The correct answer is %d", computerNum);
  }

  return 0;
}