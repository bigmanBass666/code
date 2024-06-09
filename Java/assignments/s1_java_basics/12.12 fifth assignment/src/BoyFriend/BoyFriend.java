package BoyFriend;

public class BoyFriend {
    private String name;
    private double height;
    private double weight;

    public BoyFriend() {
    }

    public BoyFriend(String name, double height, double weight) {
        this.name = name;
        this.height = height;
        this.weight = weight;
    }

    public void wash() {
        System.out.println("洗衣服");
    }

    public void cook() {
        System.out.println("做饭");
    }

    public void show() {
        System.out.println("姓名: " + name + ", 身高: " + height + " 厘米" + ", 体重: " + weight + " 斤");
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
