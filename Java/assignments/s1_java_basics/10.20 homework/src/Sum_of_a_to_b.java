import java.util.Scanner;

public class Sum_of_a_to_b {
  public static void main(String[] args) {
    // 5. 根据用户输入的两个正整数a，b，求a--b之间的和,
    // 即Sum=a+(a+1)+(a+2)+...(b-2)+(b-1)+b
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter the start num: ");
    int a = scanner.nextInt();

    System.out.print("Enter the end num: ");
    int b = scanner.nextInt();

    int sum = a;
    for (int i = a + 1; i <= b; i++) {
      sum += i;
    }

    System.out.println("The sum of " + a + " to " + b + " is " + sum + ".");
    scanner.close();
  }
}