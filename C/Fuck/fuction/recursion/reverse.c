#include <stdio.h>
#include <string.h>

// void reverse(char *arr)
// {
//     int len = strlen(arr);

//     char *left = arr;
//     char *right = (arr + len - 1);

//     char tmp = *left;
//     *left = *right;

//     *right = '\0';
//     if (strlen(arr + 1) >= 2)
//     {
//         reverse(arr + 1);
//     }

//     *right = tmp;
// }

void reverse(char *arr)
{
    int len = strlen(arr);
    char temp = *arr;
    *arr = *(arr + len - 1);

    *(arr + len - 1) = '\0';
    if (strlen(arr + 1) >= 2)
    {
        reverse(arr + 1);
    }

    *(arr + len - 1) = temp;
}

int main()
{
    char arr[] = "abcdef";
    reverse(arr);
    printf("%s", arr);

    return 0;
}