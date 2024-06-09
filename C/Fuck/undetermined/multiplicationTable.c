#include <stdio.h>

void multiplicationTable(int n)
{
	for (int i = 1; i <= n; i++)
	{
		for (int j = 1; j <= i; j++)
		{
			printf("%d X %d = %d\t", j, i, i * j);
		}
		printf("\n");
	}
}

int main()
{
	multiplicationTable(9);
	return 0;
}