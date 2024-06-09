public class Three_five {
  public static void main(String[] args) {
    // 3. 从0-1000（包含1000）以内的整数中，找出一个这样的整数，刚好这个整数能够被3整除或者被5整除，我们称这样的数为“三五数”
    // 请问在0-1000之间的整数中，有多少个这样的“三五数”。
    int count = 0;
    for (int i = 0; i <= 1000; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        count++;
      }
    }
    System.out.println("有" + count + "个这样的数");
  }
}
