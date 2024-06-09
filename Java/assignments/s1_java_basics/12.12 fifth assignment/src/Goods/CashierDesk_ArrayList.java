package Goods;

import java.util.ArrayList;

public class CashierDesk_ArrayList {
    private ArrayList<Goods> goods;
    private double total;

    public CashierDesk_ArrayList() {
        goods = new ArrayList<Goods>();
    }

    public void add(Goods good) {
        goods.add(good);
    }

    public void computeBill() {
        total = 0;
        for (Goods good : goods) {
            total += good.getPrice() * good.getNumber();
        }
        System.out.println("Total: " + total);
    }
}
