public class Dog extends Animals {
    private String type = "dog";

    public Dog() {
        // super();
        name = "dog";
        age = 80;
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
