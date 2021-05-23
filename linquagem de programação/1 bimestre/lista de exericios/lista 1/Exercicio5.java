import java.util.Scanner;

public class Exercicio5 {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        int x, y, cont = 0;

        x = input.nextInt();
        y = input.nextInt();

        for (
            int i = Math.min(x, y); 
            i < Math.max(x, y); 
            i++
        ) if (i % 2 != 0) cont += i;

        System.out.printf("%d\n", cont);

        input.close();
    }
}