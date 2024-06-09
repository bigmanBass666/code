public class WordNum {
  public static void main(String[] args) {
    // 问：用代码，统计字符串有多少个单词，并输出打印所有的单词
    String sentence = "Java is an object-oriented programming language, not only absorbs the advantages of C++ language, but also abandons C++ in the difficult to understand the concept of multiple inheritance, Pointers, so Java language has two features of powerful and easy to use. ";

    String[] words = sentence.split(" ");
    for (String word : words) {
      System.out.println(word.replaceAll(",|\\.", ""));
    }
    System.out.println("Words count: " + words.length);
  }
}
