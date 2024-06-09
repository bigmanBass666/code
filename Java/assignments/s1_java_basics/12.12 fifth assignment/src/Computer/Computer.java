package Computer;

public class Computer {
    private String brand;
    private int price;
    private String color;

    public Computer(String brand, int price, String color) {
        this.brand = brand;
        this.price = price;
        this.color = color;
    }

    public Computer() {
    }

    public void playGame() {
        System.out.println("正在使用价格为 " + this.price + " 元" + this.color + "的 " + this.brand + " 电脑玩游戏....");
    }

    public void sendMessage() {
        System.out.println("正在使用价格为 " + this.price + " 元" + this.color + "的 " + this.brand + " 电脑发信息....");
    }

    public String getBrand() {
        return this.brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getPrice() {
        return this.price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
