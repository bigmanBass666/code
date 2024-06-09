public class PalindromicNumber {
  public static void main(String[] args) {
    // 4. 请打印出1000-9999之间所有的回文数（回文数比如1001,5005,8228,9999）
    // 题目思路：可对1000-9999所有数字进行遍历，并拆出此数各个位
    for (int i = 1000; i <= 9999; i++) {
      int unitsDigit = i % 10;
      int tensDigit = i / 10 % 10;
      int hundredsDigit = i / 100 % 10;
      int thousandsDigit = i / 1000 % 10;

      if (thousandsDigit == unitsDigit && hundredsDigit == tensDigit) {
        System.out.print(i + "\t");
      }
      // System.out.println(i + ": " + thousandsDigit + hundredsDigit + tensDigit + unitsDigit);
    }
  }
}