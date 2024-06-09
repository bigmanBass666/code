package ChineseTeacher;

public class ChineseTeacher implements Teacher {
    private String name;
    private String gender;
    private int age;

    public ChineseTeacher(String name, String sex, int age) {
        this.name = name;
        this.gender = sex;
        this.age = age;
    }

    public ChineseTeacher() {
    }

    @Override
    public void lecture() {
        System.out.println("Chinese Teacher " + this.name + " is teaching.");
    }

    @Override
    public void assignHomework() {
        System.out.println("Chinese Teacher " + this.name + " is assigning homework.");
    }

    public void writePaper() {
        System.out.println("Chinese Teacher " + this.name + " is writing paper.");
    }

    @Override
    public String toString() {
        return "ChineseTeacher [name=" + name + ", sex=" + gender + ", age=" + age + "]";
    }
}
