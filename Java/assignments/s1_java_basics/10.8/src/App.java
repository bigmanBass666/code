import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("1." + "volume");
            System.out.println("2." + "digitSplit");
            System.out.println("3." + "sumOfDigit");
            System.out.println("4." + "i_dont_know_what_to_call_it");

            System.out.print("Just pick one: ");
            String choice = scanner.next();

            switch (choice) {
                case "1":
                    System.out.println();
                    System.out.print("Enter a radius: ");
                    double radius = scanner.nextDouble();
                    System.out.print("Enter a height: ");
                    double height = scanner.nextDouble();
                    System.out.println("The volume is: " + volume(radius, height));
                    System.out.println();
                    break;
                case "2":
                    System.out.println();
                    System.out.print("Enter a integer: ");
                    int num1 = scanner.nextInt();
                    digitSplit(num1);
                    System.out.println();
                    break;
                case "3":
                    System.out.println();
                    System.out.print("Enter a three-digit number: ");
                    int num2 = scanner.nextInt();
                    System.out.println("The sum is: " + sumOfDigit(num2));
                    System.out.println();
                    break;
                case "4":
                    System.out.println();
                    System.out.print("Enter a double: ");
                    double num3 = scanner.nextDouble();
                    i_dont_know_what_to_call_it(num3);
                    System.out.println();
                    break;
                default:
                    System.out.println();
                    System.out.println("Invalid input.");
                    System.out.println();
            }
        }
    }

    /*
     * 2.
     * 编写程序，从键盘输入圆柱底面半径和高，计算打印输出圆柱的体积。
     * 例如：圆柱体的底的半径r=2, 高h=4 则圆柱体体积16π （提示：体积=底圆面积×高）
     */
    public static double volume(double radius, double height) {
        return Math.PI * Math.pow(radius, 2) * height;
    }

    /*
     * 3.
     * 编写程序，从键盘输入一个3位数，按位数逆序输出。提示：使用%和/运算符可求出每一位数字。
     * 例如，输入整数932，输出 2 3 9
     */
    public static void digitSplit(int num) {
        if (num < 10) {
            System.out.println(num);
            return;
        }

        int digit = num % 10;
        System.out.print(digit + " ");
        digitSplit(num / 10);
    }

    /*
     * 4.
     * 编写程序，接受用户从键盘输入的一个三位整数，计算大印并输出各位数字之和。
     * 例如，输入整数932，各位数字之和是14。
     */
    public static int sumOfDigit(int num) {
        int unitsDigit = num % 10;
        int tensDigit = num / 10 % 10;
        int hundredsDigit = num / 100 % 10;
        return unitsDigit + tensDigit + hundredsDigit;
    }

    /*
     * 5.
     * 编写程序，要求用户从键盘输入一个double型数，输出为该数的整数部分和小数部分。下面是程序的一次运行结果：
     * 示例：请输入一个浮点数：2.71828
     * 输出：
     * 整数部分：2
     * 小数部分：0.71828
     */
    public static void i_dont_know_what_to_call_it(double num) {
        int intPart = (int) num;
        double decimalPart = num - intPart;
        System.out.println("integer part: " + intPart);
        System.out.println("decimal part: " + decimalPart);
    }

    /*java的基本数据类型有哪些？它们的大小分别占多少字节？
     * byte 1
     * short 2
     * int 4
     * long 8
     * 
     * float 4
     * double 8
     * 
     * char 2
     * 
     * boolean 1
    */
}