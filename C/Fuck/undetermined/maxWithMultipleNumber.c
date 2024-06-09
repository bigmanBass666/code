#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	int arr[10] = { 0 };

	for (int i = 0; i < 10; i++)
	{
		scanf("%d", &arr[i]);
	}

	int max = arr[0];
	for (int i = 0; i < 10; i++)
	{
		if (max < arr[i])
		{
			max = arr[i];
		}
	}
	printf("The max is: %d", max);
	return 0;
}