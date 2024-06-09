package USB;

public class Test {
    public static void main(String[] args) {
        MobilePhone mobilePhone = new MobilePhone();
        UDisk uDisk = new UDisk();

        Computer computer = new Computer();

        computer.useMobile(mobilePhone);
        computer.useMobile(uDisk);
    }
}
