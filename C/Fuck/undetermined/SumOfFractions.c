#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

//����Ŀ���ơ�
//
//�������
//
//����Ŀ���ݡ�
//
//����1 / 1 - 1 / 2 + 1 / 3 - 1 / 4 + 1 / 5 ���� + 1 / 99 - 1 / 100 ��ֵ����ӡ�����

int main()
{
	double num = 1.0;
	for (int i = 2; i <= 100; i++)
	{
		if (i % 2 == 0)
		{
			num -= 1.0 / i;
		}
		else
		{
			num += 1.0 / i;
		}
	}
	printf("%f", num);
	return 0;
}