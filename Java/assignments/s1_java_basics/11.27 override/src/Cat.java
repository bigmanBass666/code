public class Cat extends Animals {
    private String type = "cat";

    public Cat() {
        // super();
        name = "cat";
        age = 8;
    }

    @Override
    public void eat() {
        System.out.println(type + "[named " + name + ", at aged " + age + " can eat");
    }

    @Override
    public void sleep() {
        System.out.println(type + "[named " + name + ", at aged " + age + " can sleep");
    }
}
