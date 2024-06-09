package count_of_positive_num;

import java.util.Scanner;

/**
 * 描述
 * 控制台输入整数，请设计一个死循环，当用户输入非正数时停止输入。请给出用户输入的正整数个数（默认输入个数不超过2147483647）
 * 输入描述：
 * 若干整数，整数之间用空格隔开
 * 输出描述：
 * 控制台输入的正整数个数
 * 示例1
 * 输入：
 * 1 2 3 4 5 6 7 0
 * 复制
 * 输出：
 * 7
 */
class Main {
    public static void main(String[] args) {
        int count = 0;
        Scanner scanner = new Scanner(System.in);

        // write your code here......
        while (scanner.nextInt() > 0) {
            count++;
        }

        System.out.println(count);
        scanner.close();
    }
}
