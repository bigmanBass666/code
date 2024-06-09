#include <stdio.h>

void bubbleSort(int arr[], int sz)
{
    for (int i = 0; i < sz - 1; i++)
    {
        int isChange = 0;
        // !!! for (int j = 1; j < sz - i - 1; j++)  不能是-1， 只是sz - i
        for (int j = 1; j < sz - i - 1; j++)
        {
            if (arr[j] < arr[j - 1])
            {
                int temp = arr[j - 1];
                arr[j - 1] = arr[j];
                arr[j] = temp;

                isChange = 1;
            }
        }

        if (!isChange)
            return;
    }
}

void printArr(int arr[], int sz)
{
    printf("{ ");
    for (int i = 0; i < sz; i++)
    {
        i < sz - 1 ? printf("%d, ", arr[i]) : printf("%d", arr[i]);
    }
    printf(" }");
}

int main()
{
    int arr[] = {5, 7, 9, 4, 3, 2, 1, -1};
    int sz = sizeof(arr) / sizeof(arr[0]);
    bubbleSort(arr, sz);
    printArr(arr, sz);

    return 0;
}