public class Water {
  public static void main(String[] args) {
    // 6. 一瓶脉动5元钱，一瓶绿茶3元钱，三瓶农夫山泉1元钱。要求200元买100瓶水，请给出所有可行的结果？
    // 解法思路：可利用多重循环遍历所有情况，并对当前情况进行判断

    // 设脉动为a， 绿茶为b， 农夫山泉为c
    // a + b + c = 100
    // 5a + 3b + c/3 = 200
    int money = 200;
    int waterCount = 100;

    for (int i = 0; i <= money / 5; i++) {  // 脉动 5
      for (int j = 0; j <= money / 3; j++) {  // 绿茶 3
        for (int k = 0; k <= waterCount; k++) {  // 农夫山泉 1/3
          if ((5 * i + 3 * j + k / 3.0 == money) && (i + j + k == waterCount)) {
            System.out.print("脉动:" + i + "\t" + "雪碧:" + j + "\t" + "农夫山泉:" + k + "\t");
            System.out.print("5*" + i + " + 3" + "*" + j + " + " + k + "/" + "3 = " + (5 * i + 3 * j + k / 3.0) + " \t");
            System.out.println(i + " + " + j + " + " + k + " = " + (i + j + k));
          }
        }
      }
    }
  }
}