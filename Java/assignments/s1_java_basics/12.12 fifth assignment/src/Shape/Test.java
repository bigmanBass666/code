package Shape;

public class Test {
    public static void main(String[] args) {
        Shape rectangle = new Rectangle(10, 20);

        System.out.println("Area: " + rectangle.getArea());
        System.out.println("Perimeter: " + rectangle.getPerimeter());

        System.out.println("----------------");

        Circle circle = new Circle();

        circle.setRadius(1);
        System.out.println("Area: " + circle.getArea());
        System.out.println("Perimeter: " + circle.getPerimeter());
    }
}
