#include <stdio.h>

// 实现函数init() 初始化数组为全0
// 实现print()  打印数组的每个元素
// 实现reverse()  函数完成数组元素的逆置。

void initial(int arr[], int sz)
{
    for (int i = 0; i < sz; i++)
    {
        arr[i] = 0;
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

void reverse(int arr[], int sz)
{
    int leftIndex = 0;
    int rightIndex = sz - 1;

    while (leftIndex < rightIndex)
    {
        int temp = arr[leftIndex];
        arr[leftIndex] = arr[rightIndex];
        arr[rightIndex] = temp;
        leftIndex++;
        rightIndex--;
    }
}

int main()
{
    int arr[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int sz = sizeof(arr) / sizeof(arr[0]);
    reverse(arr, sz);
    printArray(arr, sz);

    initial(arr, sz);
    printArray(arr, sz);

    return 0;
}