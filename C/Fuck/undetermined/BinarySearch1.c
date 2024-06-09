#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	int arr[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
	int k = 0;
	printf("Enter a num: ");
	scanf("%d", &k);
		
	int size = sizeof(arr) / sizeof(arr[0]);
	int leftIndex = 0;
	int rightIndex = size - 1;

	while (leftIndex <= rightIndex)
	{
		int middleIndex = (leftIndex + rightIndex) / 2;
		if (arr[middleIndex] > k)
		{
			rightIndex = middleIndex - 1;
		}
		else if (arr[middleIndex] < k)
		{
			leftIndex = middleIndex + 1;
		}
		else
		{
			printf("Got it. index: %d", middleIndex);
			break;
		}
	}

	if (leftIndex > rightIndex)
	{
		printf("Cannot find the num: %d", k);
	}
	return 0;
}