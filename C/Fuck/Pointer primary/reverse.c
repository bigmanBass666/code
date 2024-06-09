#include <stdio.h>
#include <string.h>

void reverse(char* str)
{
    char* left = str;
    char* right = str + strlen(str) - 1;

    while (left < right)
    {
        char temp = *left;
        *left = *right;
        *right = temp;
        left++;
        right--;
    }
}

int main()
{
    char str[] = "abcdefg";
    reverse(str);
    printf("%s", str);

    return 0;
}