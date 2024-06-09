package Goods;

public class Foods implements Goods {
    private String name;
    private double price;
    private int number;

    public Foods(String name, double price, int number) {
        this.name = name;
        this.price = price;
        this.number = number;
    }

    public Foods() {
    }

    @Override
    public void print() {
        System.out.println("Foods [name=" + name + ", price=" + price + ", number=" + number + "]");
    }

    @Override
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }
}
