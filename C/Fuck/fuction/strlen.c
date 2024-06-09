#include <stdio.h>
#include <string.h>

int strLen(char* str)
{
    int length = 0;
    while (*str != '\0')
    {
        length++;
        str++;
    }
    return length;
}

int main()
{
    char array[] = "I miss my coco butter kisses hope you smile when you listen.";
    printf("The result of circulation: %d\n", strLen(array));
    printf("The result of strlen: %d", strlen(array));

    return 0;
}