public class Animals {
    public String name;
    public int age;

    public Animals() {
        name = "animal";
        age = 0;
    }

    public void eat() {
        System.out.println("animals [named " + name + ", at aged " + age + " can eat");
    }

    public void sleep() {
        System.out.println("animals [named " + name + ", at aged " + age + " can sleep");
    }
}
