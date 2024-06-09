public class MaskSensitiveWords {
  public static void main(String[] args) {
    // 将字符串中某些敏感词屏蔽掉。例如：
    // 字符串：“你敢骂我？你狗日的是谁？我是谁？我是你大爷，你是SB，CNM的”，
    // 由于“狗日”是敏感词汇，替换为“**”，“大爷”是敏感词，替换为“**”，“SB”是敏感词，替换为“**”，将上述屏蔽后的字符串输出打印。 
    String originalString = "你敢骂我？你狗日的是谁？我是谁？我是你大爷，你是SB，CNM的";
    System.out.println(originalString);
    String censoredString = originalString.replaceAll("狗日|大爷|SB|CNM", "**");
    System.out.println(censoredString);
  }
}
