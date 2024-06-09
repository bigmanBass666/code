import java.time.LocalDate;
import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scanner = new Scanner(System.in);
        LocalDate currentDate = LocalDate.now();

        System.out.print("Enter the month: ");
        int month = scanner.nextInt();

        System.out.print("Enter the day: ");
        int day = scanner.nextInt();

        int sum = 0;

        switch (month) {
            case 1:
                sum += 31;
            case 2:
                if (isLeapYear(currentDate.getYear())) {
                    sum += 29;
                } else {
                    sum += 28;
                }
            case 3:
                sum += 31;
            case 4:
                sum += 30;
            case 5:
                sum += 31;
            case 6:
                sum += 30;
            case 7:
            case 8:
                sum += 31;
            case 9:
                sum += 30;
            case 10:
                sum += 31;
            case 11:
                sum += 30;
            case 12:
                sum += 31;
                break;
            default:
                System.out.println("Invalid input");
        }

        int date = 365 - sum - day;
        System.out.println("The number of days between the current time " + currentDate.getYear() + "-" + month + "-"
                + day + " and New Year's Day is: " + date + ".");

        scanner.close();
    };

    public static boolean isLeapYear(int year) {
        return false;
    }
}
