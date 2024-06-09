package Goods;

public class DailyGoods implements Goods {
    private String name;
    private double price;
    private int number;

    public DailyGoods(String name, double price, int number) {
        this.name = name;
        this.price = price;
        this.number = number;
    }

    public DailyGoods() {
    }

    @Override
    public void print() {
        System.out.println("DailyGoods [name=" + name + ", price=" + price + ", number=" + number + "]");
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
