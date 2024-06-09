#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int max(int a, int b)
{
	return a > b ? a : b;
}

int main()
{
	int a, b;
	while (1)
	{
		printf("Enter something like(1 2): ");
		scanf("%d %d", &a, &b);
		printf("max: %d\n\n", max(a, b));
	}
	return 0;
}