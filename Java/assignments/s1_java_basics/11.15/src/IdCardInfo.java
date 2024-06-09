import java.util.Scanner;

public class IdCardInfo {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    // 输入一个18位的身份证号，获取该同学的出生年月日和性别，输出打印。
    System.out.print("Enter your card id: ");
    String cardId = scanner.nextLine();

    // 身份证号码第7-10位代表身份证持有人的出生年份；
    String birthYear = cardId.substring(6, 10);
    System.out.println("Birth year: " + birthYear);

    // 身份证号码第11-12位代表身份证持有人的出生月份；
    String birthMonth = cardId.substring(10, 12);
    System.out.println("Birth month: " + birthMonth);

    // 身份证号码第13-14位代表身份证持有人的出生当月日期；
    String birthday = cardId.substring(12, 14);
    System.out.println("Birthday: " + birthday);

    // 身份证号码第17位代表性别，其中奇数为男、偶数为女；
    char genderNum = cardId.charAt(16);
    System.out.println("Gender number: " + genderNum);
    System.out.println("Gender: " + (genderNum % 2 == 0 ? '女' : '男'));

    scanner.close();
  }
}
