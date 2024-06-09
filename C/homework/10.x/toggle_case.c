#include <stdio.h>

char toggleCase(char s)
{
    if (s >= 65 && s <= 90)
        return s += 32;
    if (s >= 97 && s <= 122)
        return s -= 32;
    else
        return 0;
}

int main()
{
    char s;
    while (1)
    {
        printf("Enter a letter: ");
        scanf("%c", &s);

        while (getchar() != '\n'); // 清空输入缓冲区

        if (toggleCase(s))
            printf("The converted '%c' is: %c\n\n", s, toggleCase(s));
        else
            printf("Invalid input: '%c'\n\n", s);
    }

    return 0;
}