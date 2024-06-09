import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class IdCardInfo_bulk {
  public static void main(String[] args) throws FileNotFoundException {
    // 拓展题4-1：（批量登记）
    // 已知文件1.txt中有n个同学的身份证号信息，分别统计1.txt中有多少个同学，并打印每个同学的出生年月日和性别。（提示使用：Scanner
    // scanner=new Scanner(file)）

    String filePath = "E:\\melon\\Code\\Java\\homework\\11.15\\card_id.txt";  // 老师我用不了相对路径😭😭
    File file = new File(filePath);
    Scanner scanner = new Scanner(file);

    int studentCount = 0;

    while (scanner.hasNextLine()) {
      studentCount++;

      String line = scanner.nextLine();
      String cardId = line.trim();
      
      getInfoByCardId(cardId);
    }

    System.out.println("The count of student is: " + studentCount);

    scanner.close();
  }

  public static void getInfoByCardId(String cardId) {
    String birthYear = cardId.substring(6, 10);
    String birthMonth = cardId.substring(10, 12);
    String birthday = cardId.substring(12, 14);
    char genderNum = cardId.charAt(16);
    
    System.out.println("Card id: " + cardId);
    System.out.println("Birth year: " + birthYear);
    System.out.println("Birth month: " + birthMonth);
    System.out.println("Birthday: " + birthday);
    System.out.println("Gender: " + (genderNum % 2 == 0 ? '女' : '男'));
    System.out.println();
  }
}