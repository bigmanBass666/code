#include <stdio.h>
#include <string.h>

int strLen(char* str)
{
    if (*str == '\0')
    {
        return 0;
    }
    return strLen(str+1) + 1;
}

int main(int argc, char const *argv[])
{
    char array[] = "I miss my coco butter kisses hope you smile when you listen.";
    printf("The result of recursion: %d\n", strLen(array));
    printf("The result of strlen: %d", strlen(array));

    return 0;
}
