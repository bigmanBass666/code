package Computer;

public class Test {
    public static void main(String[] args) {
        Computer lenovo = new Computer();

        lenovo.setBrand("Lenovo");
        lenovo.setPrice(7998);
        lenovo.setColor("黑色");

        lenovo.playGame();
        lenovo.sendMessage();

        System.out.println("---------------------------");

        Computer hp = new Computer();

        hp.setBrand("HP");
        hp.setPrice(5998);
        hp.setColor("白色");

        hp.playGame();
        hp.sendMessage();
    }
}
