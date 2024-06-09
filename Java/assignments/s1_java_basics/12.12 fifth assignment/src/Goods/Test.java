package Goods;

public class Test {
    public static void main(String[] args) {
        Goods paper = new DailyGoods("纸巾", 5, 2);
        Goods water = new Foods("水", 3, 1);
        Goods pen = new Stationery("笔", 3, 2);

        paper.print();
        water.print();
        pen.print();

        CashierDesk cashierDesk = new CashierDesk(3);

        cashierDesk.add(paper);
        cashierDesk.add(water);
        cashierDesk.add(pen);

        cashierDesk.computeBill();
    }
}
