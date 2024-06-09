//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//
////【题目名称】
////最大公约数
////【题目内容】
////给定两个数，求这两个数的最大公约数
////例如：
////输入：20 40 
////输出：20
//
//int gcd(int a, int b)
//{
//	int min = a < b ? a : b;
//	int i = 0;
//	int gcd = 1;
//
//	for (i = 1; i <= min; i++)
//	{
//		if (a % i == 0 && b % i == 0 && i > gcd)
//		{
//			gcd = i;
//		}
//	}
//	return gcd;
//}
//
//int main()
//{
//	int a, b;
//	scanf("%d %d", &a, &b);
//	printf("%d", gcd(a, b));
//
//	return 0;
//}