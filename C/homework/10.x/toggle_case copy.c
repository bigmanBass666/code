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
    printf("输入一个需要转换的字母: ");
    scanf("%c", &s);

    if (toggleCase(s))
        printf("转换后的字符 '%c' : %c\n\n", s, toggleCase(s));
    else
        printf("无效输入: '%c'\n\n", s);

    return 0;
}