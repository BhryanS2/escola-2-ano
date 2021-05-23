import java.util.Scanner;

public class Exercicio2 {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        Double a, b, c;

        a = input.nextDouble();
        b = input.nextDouble();
        c = input.nextDouble();

        System.out.println( ((a * c) / 2) );
        System.out.println( (3.14159 * (c * c)) );
        System.out.println( (((a + b) * c) / 2) );
        System.out.println( (b * b) );
        System.out.println( (a * b) );

        input.close();
    }
}