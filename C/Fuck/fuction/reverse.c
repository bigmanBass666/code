#include <stdio.h>
#include <string.h>

void reverse(char* str)
{
    char* left = str;
    char* right = str + strlen(str) - 1;

    while (left < right)
    {
        char tem = *left;
        *left = *right;
        *right = tem;
        left++;
        right--;
    }
}

int main()
{
    char arr[] = "abcdefghijklmnopqrst";
    reverse(arr);
    printf("%s", arr);

    return 0;
}