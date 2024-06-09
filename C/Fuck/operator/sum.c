#include <stdio.h>

// 【题目名称】

// 计算求和

// 【题目内容】

// 求Sn=a+aa+aaa+aaaa+aaaaa的前5项之和，其中a是一个数字，

// 例如：2+22+222+2222+22222

int sum(int a)
{
    int sum = a;
    int num = a;
    for (int i = 1; i < 5; i++)
    {
        num = num * 10 + 2;
        sum += num;
    }
    return sum;
}

int main()
{
    int a = 2;
    printf("sum: %d", sum(a));

    return 0;
}