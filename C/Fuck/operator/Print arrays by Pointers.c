#include <stdio.h>

void printArray(int arr[], int sz)
{
    for (int i = 0; i < sz; i++)
    {
        printf("%d ", *(arr+i));
    }
}

int main()
{
    int arr[] = {0, 1, 2, 3, 4, 55, 6, 7, 8, 9};
    int sz = sizeof(arr) / sizeof(arr[0]);
    printArray(arr, sz);

    return 0;
}