/*!
 * \author PI
 * \date 31/10/2023
 * \brief C assignment
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/// @brief Generate a random integer from startNum to endNum.
/// @param startNum
/// @param endNum
/// @return A random integer from startNum to endNum.
int get_random_number(int startNum, int endNum)
{
    return rand() % (endNum - startNum + 1) + startNum;
}

/// @brief Some logical decisions about two numbers in a number guessing game.
/// @param computerNum
/// @param userNum
/// @param guessChance
/// @param guessCount
/// @return  Determines whether the game should continue.
int judge(int *computerNum, int *userNum, int *guessChance, int *guessCount)
{
    int isContinue = 1;
    if (*userNum > *computerNum)
    {
        printf("Wrong! Too big! You have %d more chances.\n", *guessChance);
    }
    else if (*userNum < *computerNum)
    {
        printf("Wrong! Too small! You have %d more chances.\n", *guessChance);
    }
    else
    {
        printf("\nRight! Your number of guesses is %d.\n", *guessCount);
        isContinue = 0;
    }
    return isContinue;
}

/// @brief Start guessing the numbers.
/// @param startNum
/// @param endNum
/// @param guessChance The maximum number of guesses, and if it is 0, there is an infinite number of guesses until you are correct.  // todo
void play(int startNum, int endNum, int guessChance)
{
    srand(time(NULL));

    int isRight = 0;
    int computerNum = 0;
    int userNum = 0;
    int guessCount = 0;

    computerNum = get_random_number(startNum, endNum);

    printf("\nrandom num: %d\n", computerNum);
    printf("You have a total of %d chances.\n", guessChance);

    do
    {
        guessChance--;
        guessCount++;
        printf("\nEnter the number you wanna guess (%d ~ %d): ", startNum, endNum);
        scanf("%d", &userNum);

        if (!judge(&computerNum, &userNum, &guessChance, &guessCount))
        {
            isRight = 1;
            break;
        }
    } while (guessChance > 0);

    if (!isRight)
    {
        printf("\nThe correct answer is %d.", computerNum);
    }
}

int main(void)
{
    int startNum = 1;
    int endNum = 10;
    int guessChance = 3;

    char result;
    do
    {
        play(startNum, endNum, guessChance);
        printf("\nwanna continue? ('y' / 'Y'): ");
        getchar();
        scanf("%c", &result);
    } while (result == 'y' || result == 'Y');
    printf("Exit successfully.");

    return 0;
}