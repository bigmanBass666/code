//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//
////����Ŀ���ơ�
////���Լ��
////����Ŀ���ݡ�
////���������������������������Լ��
////���磺
////���룺20 40 
////�����20
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