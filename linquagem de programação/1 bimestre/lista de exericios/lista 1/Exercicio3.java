import java.util.Scanner;

public class Exercicio3 {
    public static void main(String args[]) {
        Scanner input = new Scanner(System.in);
        String Name;
        String Salario, Vendas;

        Name = input.next();
        Salario = input.next();
        Vendas= input.next();

        System.out.println( Name + " receberá " + ( Double.parseDouble( Salario ) + Double.parseDouble( Vendas ) * 0.15) );
        input.close();
    }
}
