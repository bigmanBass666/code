public class Score {
    public static void main(String[] args) throws Exception {
        // 1. 我院教师对某次学生的期末考试成绩评测，评测规则如下：
        // 成绩>=90 ：优秀
        // 成绩>=80 ：良好
        // 成绩>=60 ：中等
        // 成绩<60 ：差
        // 假设铁蛋在这次期末考试成绩为85.5分，请问他的评测结果是什么情况？
        double score = 85.5;
        String result = "";

        if (score >= 90) {
            result = "优秀";
        } else if (score >= 80) {
            result = "良好";
        } else if (score >= 60) {
            result = "中等";
        } else {
            result = "差";
        }

        System.out.println("铁蛋成绩" + score + "评测等级为: " + result);
    }
}
