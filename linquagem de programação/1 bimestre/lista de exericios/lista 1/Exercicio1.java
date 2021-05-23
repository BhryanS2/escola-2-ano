import java.util.Scanner;

class Exercicio1 {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        int a, b;
        a = input.nextInt();
        b = input.nextInt();
        System.out.println("SOMA = " + (a + b));

        input.close();
    };
}