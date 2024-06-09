package USB;

public class MobilePhone implements USB {
    @Override
    public void work() {
        System.out.println("手机实现了USB接口~");
    }
}
