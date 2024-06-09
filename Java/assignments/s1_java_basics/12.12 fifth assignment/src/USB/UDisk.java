package USB;

public class UDisk implements USB {
    @Override
    public void work() {
        System.out.println("U盘实现了USB接口~");
    }
}
