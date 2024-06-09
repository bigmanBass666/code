package prime_num;

import java.util.Scanner;

/**
 * 描述
 * 请补全预设代码中判断质数的方法。
 * 输入描述：
 * 一个大于1的整数
 * 输出描述：
 * true/false
 */
public class Main {

    public static void main(String[] args) {
        Main main = new Main();
        Scanner scan = new Scanner(System.in);
        int number = scan.nextInt();
        scan.close();
        System.out.println(main.isPrimeNumber(number));
    }

    public Boolean isPrimeNumber(int number) {
        for (int i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }
}