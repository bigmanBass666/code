package lowest_common_multiple;

import java.util.Scanner;

public class LCM {
    public static void main(String[] args) {
        Scanner console = new Scanner(System.in);
        int m = console.nextInt();
        int n = console.nextInt();

        console.close();

        int result = getCM(m, n);
        System.out.println(result);
    }

    /**
     * 欧几里得算法，也被称为辗转相除法，是一种用于计算两个整数的最大公约数的算法。它的原理基于以下观察：
     * 
     * 设两个正整数为a和b，并且a > b。那么a和b的最大公约数（Greatest Common Divisor，简称GCD）等于b和a % b的最大公约数。
     * 
     * 
     * 换句话说，如果我们将a除以b得到的余数记为r，那么a和b的最大公约数等同于b和r的最大公约数。这个过程可以一直重复下去，直到余数为零时停止。此时，非零的那个数就是最大公约数。
     * 
     * 欧几里得算法的步骤如下：
     * 1. 令a和b分别为两个正整数，且a > b。
     * 2. 求a除以b的余数，记作r。
     * 3. 如果r为零，则b即为最大公约数，算法终止。
     * 4. 如果r不为零，则将原先的b赋值给a，将r赋值给b，回到步骤2。
     * 
     * 这个算法的关键在于每一次迭代都将较大的数替换为较小的数，从而加速最终求解最大公约数的过程。
     * 
     * 欧几里得算法有广泛的应用，除了求解最大公约数以外，它还可以用于判断两个数是否互质（即它们的最大公约数为1）、计算两个数的最小公倍数等。在计算机科学和数学领域中，欧几里得算法被广泛应用于数论、密码学、多项式求解等方面。
     * 
     * 希望这个解释能够帮助您理解什么是欧几里得算法。如果您有任何其他问题，请随时提问。
     */
    public static int getCM(int m, int n) {
        int max = m > n ? m : n;
        int min = m + n - max;

        // 欧几里得算法（辗转相除法）
        while (min != 0) {
            int temp = min;
            min = max % min;
            max = temp;
        }

        return (m * n) / max;
    }

}
