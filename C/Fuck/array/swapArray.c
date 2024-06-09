#include <stdio.h>

// 将数组A中的内容和数组B中的内容进行交换。（数组一样大）
void swap(int arr1[], int arr2[], int sz)
{
    for (int i = 0; i < sz; i++)
    {
        int temp = arr1[i];
        arr1[i] = arr2[i];
        arr2[i] = temp;
    }
}

void printArray(int arr[], int sz)
{
    printf("{ ");
    for (int i = 0; i < sz; i++)
    {
        i == sz - 1 ? printf("%d", arr[i]) : printf("%d, ", arr[i]);
    }
    printf(" }\n");
}

int main()
{
    int arr1[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
    int arr2[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    int sz = sizeof(arr1) / sizeof(arr1[0]);
    printf("arr1: ");
    printArray(arr1, sz);
    printf("arr2: ");
    printArray(arr2, sz);

    swap(arr1, arr2, sz);

    printf("arr1: ");
    printArray(arr1, sz);
    printf("arr2: ");
    printArray(arr2, sz);

    return 0;
}