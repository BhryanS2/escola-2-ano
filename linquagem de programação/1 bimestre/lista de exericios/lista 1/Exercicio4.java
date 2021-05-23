import java.util.Scanner;
import java.util.Arrays;

public class Exercicio4 {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        int[] arr = new int[3];

        for (int i = 0; i < 3; i++)
            arr[i] = input.nextInt();

        for (int i = 0; i < 3; i++)
            System.out.printf("%d ", arr[i]);

        Arrays.sort(arr);
        System.out.printf("\n");

        for (int i = 0; i < 3; i++)
            System.out.printf("%d ", arr[i]);
        input.close();
    }
}