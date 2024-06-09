//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//
////【题目名称】
////
////从大到小输出
////
////【题目内容】
////
////写代码将三个整数数按从大到小输出。
////
////例如：
////
////输入：2 3 1
////
////输出：3 2 1
//
//int main()
//{
//	int a, b, c;
//	scanf("%d %d %d", &a, &b, &c);
//	int temp = b;
//
//	if (a < b)
//	{
//		b = a;
//		a = temp;
//	}
//	if (b < c)
//	{
//		temp = c;
//		c = b;
//		b = temp;
//	}
//	if (a < b)
//	{
//		b = a;
//		a = temp;
//	}
//
//	printf("%d %d %d", a, b, c);
//
//	return 0;
//}