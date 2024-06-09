import java.util.Random;

public class IsTriangle {
  public static void main(String[] args) {
    // 随机从0-100选取3个随机数：a、b、c
    int min = 0;
    int max = 100;
    boolean successful = false;

    for (int i = 0; i < 5; i++) {
      int a = getRandomNum(min, max);
      int b = getRandomNum(min, max);
      int c = getRandomNum(min, max);

      if (isTriangle(a, b, c)) {  // 1.判断这三个数能否组成三角形；
        successful = true;
        System.out.println(i+1 + ". " + "The area is: " + getTriangleArea(a, b, c));  // 2.若是，则计算打印其面积；否则，不计算打印面积；
      }
    }

    if (!successful) {  // 3.若5次都不能组成，则结束程序，输出：我尽力了
      System.out.println("你尽力了");
    }
  }

  public static int getRandomNum(int min, int max) {
    Random random = new Random();
    return random.nextInt(max - min + 1) + min;
  }

  public static boolean isTriangle(int a, int b, int c) {
    return (a + b > c) && (a + c > b) && (b + c > a);
  }

  public static double getTriangleArea(int a, int b, int c) {
    double p = (a + b + c) / 2;
    return Math.sqrt(p * (p - a) * (p - b) * (p - c));
  }
}