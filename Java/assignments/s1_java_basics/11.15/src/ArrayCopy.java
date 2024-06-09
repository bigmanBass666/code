import java.util.Arrays;

public class ArrayCopy {
    public static void main(String[] args) throws Exception {
        long startTime = System.currentTimeMillis();
        String[] Arr = { "abc", "bcd", "cde", "efg", "fgh" }; // 源数组
        String[] Arr1 = { "123", "456" }; // 目标数组1
        String[] Arr2 = new String[9]; // 目标数组2

        // 要求：1.把Arr和Arr1 复制到Arr 2中，并打印输出；
        System.arraycopy(Arr, 0, Arr2, 0, Arr.length);
        System.arraycopy(Arr1, 0, Arr2, Arr.length, Arr1.length);
        System.out.println(Arrays.toString(Arr2));

        // 2.新建Arr3，长度为3，内容为{“你好”,“Java”}；
        String[] Arr3 = new String[3];
        Arr3[0] = "你好";
        Arr3[1] = "Java";

        // 3.再把 Arr3 后两个元素复制到Arr2最后两个元素中；
        System.arraycopy(Arr3, Arr3.length - 2, Arr2, Arr2.length - 2, 2);
        System.out.println(Arrays.toString(Arr2));

        // 4.计算完成上述程序需要的时间是多少毫秒。
        long endTime = System.currentTimeMillis();
        long elapsedTime = endTime - startTime;
        System.out.println(elapsedTime);
    }
}
