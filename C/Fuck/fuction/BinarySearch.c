#include <stdio.h>

int binarySearch(int arr[], int size, int key)
{
    int leftIndex = 0;
    int rightIndex = size - 1;

    while (leftIndex <= rightIndex)
    {
        int middleIndex = (rightIndex - leftIndex) / 2 + leftIndex;
        if (arr[middleIndex] > key)
        {
            rightIndex = middleIndex - 1;
        }
        else if (arr[middleIndex] < key)
        {
            leftIndex = middleIndex + 1;
        }
        else
        {
            return middleIndex;
        }
    }

    return -1;
}

int main()
{
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int size = sizeof(arr) / sizeof(arr[0]);

    while (1)
    {
        int key = 0;
        printf("Enter a num: ");
        scanf("%d", &key);

        int ret = binarySearch(arr, size, key);
        if (ret == -1)
        {
            printf("Cannot find the key number: %d\n\n", key);
        }
        else
        {
            printf("The index of key %d that you search is: %d\n\n", key, ret);
        }
    }

    return 0;
}
