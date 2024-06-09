public class App {
    public static void main(String[] args) throws Exception {
        // equals(), contains(), equalsIgnoreCase(), compareTo(), compareToIgnoreCase()
        String sentence = "You know what I am saying, bro?";
        String s1 = "what";
        String s2 = "What";

        // equals()
        System.out.println("Does sentence equals to s1: " + sentence.equals(s1));  // false

        // contains()
        System.out.println("Does sentence contains s1: " + sentence.contains(s1));  //true

        // equalsIgnoreCase()
        System.out.println("Does sentence equals to s2 ignore case: " + s1.equalsIgnoreCase(s2));  // true
    }
}
