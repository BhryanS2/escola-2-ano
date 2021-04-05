import java.util.Scanner;

public class LeituraDeDados {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.printf("Digite seu nome:");
        String nome = entrada.nextLine();

        System.out.printf("Digite sua idade:");
        int idade = entrada.nextInt();

        System.out.printf("Digite seu peso:");
        double peso = entrada.nextDouble();

        System.out.printf("%s %d %.2f\n", nome,idade,peso);
    }
}