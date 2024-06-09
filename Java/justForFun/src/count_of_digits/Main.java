package count_of_digits;

import java.util.Scanner;

/**
 * 描述
 * 输入一个整数，计算它的位数。如果输入的整数不大于0则输出这个数
 * 输入描述：
 * 一个整数
 * 输出描述：
 * 整数的位数
 */
public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int num = scan.nextInt();
        scan.close();

        // write code here......
        int count = 0;

        if (num <= 0) {
            System.out.println(num);
        } else {
            while (num > 0) {
                count++;
                num /= 10;
            }
            System.out.println(count);
        }
    }
}
