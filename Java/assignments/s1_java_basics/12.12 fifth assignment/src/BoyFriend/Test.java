package BoyFriend;

public class Test {
    public static void main(String[] args) {
        BoyFriend boyfriend = new BoyFriend("Jack", 111, 22);
        boyfriend.show();
        boyfriend.wash();
        boyfriend.cook();

        System.out.println("-------------");

        BoyFriend boyfriend2 = new BoyFriend();
        boyfriend2.setName("Melody");
        boyfriend2.setHeight(123);
        boyfriend2.setWeight(33);

        boyfriend2.show();
        boyfriend2.wash();
        boyfriend2.cook();
    }
}
