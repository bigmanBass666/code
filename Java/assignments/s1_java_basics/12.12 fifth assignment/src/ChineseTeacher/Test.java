package ChineseTeacher;

public class Test {
    public static void main(String[] args) {
        ChineseTeacher chineseTeacher = new ChineseTeacher("Melody", "female", 88);
        System.out.println(chineseTeacher.toString());

        chineseTeacher.lecture();
        chineseTeacher.assignHomework();
        chineseTeacher.writePaper();
    }
}
