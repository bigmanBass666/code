public class Test {
    public static void main(String[] args) {
        Animals animals = new Animals();

        animals.eat();
        animals.sleep();

        Cat cat = new Cat();
        Dog dog = new Dog();

        cat.eat();
        cat.sleep();

        dog.eat();
        dog.sleep();
    }
}
