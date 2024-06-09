package sum_of_9_to_999;

class Test {
    public static void main(String[] args) {
        long sum = 0;
        for (long i = 10; i <= 10000000000L; i *= 10) {
            System.out.println(i - 1);
            sum += i - 1;
        }
        System.out.println(sum);
    }
}