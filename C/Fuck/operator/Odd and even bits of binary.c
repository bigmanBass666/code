#include <stdio.h>

/*
思路：
1. 提取所有的奇数位，如果该位是1，输出1，是0则输出0
2. 以同样的方式提取偶数位置

检测num中某一位是0还是1的方式：
1. 将num向右移动i位
2. 将移完位之后的结果与1按位与，如果：
    结果是0，则第i个比特位是0
    结果是非0，则第i个比特位是1
*/

// int calc_diff_bit(int m, int n)
// {
//     int tmp = m^n;
//     int count = 0;
//     while(tmp)
//     {
//         tmp = tmp&(tmp-1);
//         count++;
//     }
//     return count;
// }

// int judge(int bit)
// {
    
// }

int main()
{
    int a = 32;
    for (int i = 0; i < 32; i++)
    {
        int odd = a & 1;
        a >>= 1;
        int even = a & 1;
        printf("odd: %d\t", odd);
        printf("even: %d\n", even);
        a >>= 1;
    }

    return 0;
}