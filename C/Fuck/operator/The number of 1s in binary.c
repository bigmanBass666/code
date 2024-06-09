#include <stdio.h>

int main()
{
    int num = 15;
    int count = 0;
    for (int i = 0; i < 32; i++)
    {
        int temp = num & 1;
        if (temp)
            count++;
        num >>= 1;
    }
    printf("The number of 1s in binary 15 is: %d", count);

    return 0;
}

// 可以观察下：此种方式，数据的二进制比特位中有几个1，循环就循环几次，而且中间采用了位运算，处理起来比较高效
int count_one_bit(int n)
{
	int count = 0;
	while(n)
	{
		n = n&(n-1);
		count++;
	}
	return count;
}