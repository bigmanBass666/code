package Goods;

public class CashierDesk {
    private Goods[] goods;
    private int count;

    public CashierDesk(int size) {
        goods = new Goods[size];
        count = 0;
    }

    public void add(Goods good) {
        if (count < goods.length) {
            goods[count] = good;
            count++;
        } else {
            System.out.println("购物车已满，无法再添加商品！");
        }
    }

    public void computeBill() {
        double total = 0;
        for (Goods good : goods) {
            total += good.getPrice() * good.getNumber();
        }
        System.out.println("Total: " + total);
    }
}
