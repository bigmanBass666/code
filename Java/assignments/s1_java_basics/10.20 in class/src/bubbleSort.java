import Shit.fuck;

public class bubbleSort {
  public static void main(String[] args) {
    // int[] arr = { 4, 3, 2, 1 };
    int[] arr = { 5, 7, 9, 4, 3, 2, 1, -1 };
    fuck.printArray(arr);
    myBubbleSort(arr);
    fuck.printArray(arr);
  }

  public static void myBubbleSort(int[] arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int isChange = 0;
      for (int j = 1; j < arr.length - i; j++) {
        // if (arr[i + 1] < arr[i]) {
        // int temp = arr[i];
        // arr[i] = arr[i + 1];
        // arr[i + 1] = temp;
        // }
        if (arr[j] < arr[j - 1]) {
          int temp = arr[j - 1];
          arr[j - 1] = arr[j];
          arr[j] = temp;

          isChange = 1;
        }
      }

      if (isChange == 0)
        return;
    }
  }
}