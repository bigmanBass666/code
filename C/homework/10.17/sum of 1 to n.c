#include <stdio.h>

int getSum_recursion(int n)
{
  if (n == 1)
  {
    return 1;
  }
  return getSum_recursion(n - 1) + n;
}

int getSum(int n)
{
  int i, sum = 0;
  for (i = 1; i <= n; i++)
  {
    sum += i;
  }
  return sum;
}

int getFactorialValue_recursion(int n)
{
  if (n == 2)
  {
    return n;
  }
  return getFactorialValue_recursion(n - 1) * n;
}

int getFactorialValue(int n)
{
  int i, product = 1;
  for (i = 2; i <= n; i++)
  {
    product *= i;
  }
  return product;
}

int main()
{
  while (1)
  {
    int n;
    printf("Enter a number you want to accumulate: ");
    scanf("%d", &n);

    printf("The sum of 1 to %d is %d.", n, getSum(n));
    printf("\n(recursion) The sum of 1 to %d is %d.", n, getSum_recursion(n));

    printf("\n\nEnter a number you want to factorial:");
    scanf("%d", &n);

    printf("The factorial of %d is %d.", n, getFactorialValue(n));
    printf("\n(recursion) The factorial of %d is %d.\n\n", n, getFactorialValue_recursion(n));
  }

  return 0;
}