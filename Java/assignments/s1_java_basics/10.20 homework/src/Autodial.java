public class Autodial {
  public static void main(String[] args) {
    // 2. 李四为他的手机设定了自动拨号
    // 按1：拨爸爸的号
    // 按2：拨妈妈的号
    // 按3：拨爷爷的号
    // 按4：拨奶奶的号
    // 李四有次自动拨号，按下了“3”,请问了李四拨了谁的号？
    int number = 3;
    String result = "";

    switch (number) {
      case 1:
        result = "father";
      case 2:
        result = "mother";
      case 3:
        result = "grandfather";
      case 4:
        result = "grandmother";
    }

    System.out.println("李四拨了" + result + "的号");
  }
}