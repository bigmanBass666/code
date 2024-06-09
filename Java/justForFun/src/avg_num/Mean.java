package avg_num;

import java.util.Scanner;

/**
 * 描述
 * 键盘输入任意多个10000以内正整数（负数代表结束），求出它们的平均数，
 * 输入描述：
 * 任意多个正整数
 * 输出描述：
 * 它们的平均数（平均数为double类型，保留两位小数）
 * 示例1
 * 输入：
 * 12 23 32 43 -1
 * 复制
 * 输出：
 * 27.50
 * 复制
 * 备注：
 * 输出格式与保留两位小数的方法已经写在预设代码注解中
 */
public class Mean {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        // write your code here......
        double sum = 0;
        int n = 0, count = 0;

        while ((n = scan.nextInt()) > 0) {
            count++;
            sum += n;
        }
        scan.close();

        double avg = sum / count;

        System.out.println(String.format("%.2f", avg));
    }
}