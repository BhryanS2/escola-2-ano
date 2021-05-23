import java.util.Scanner;

public class Exercicio1 {
    public Double salario;
    public Scanner input = new Scanner(System.in);

    public void FecharInput(Scanner input) {
        input.close();
    }
    
    public void PrintTotal(Double Total) {
        System.out.printf("R$ %.2f\n", Total);
    }

    public void printIsento() {
        System.out.println("Isento");
    }

    public void imposto() {
        double t1 = 0.00, t2 = 0.00, t3 = 0.00, total = 0.00;
        if (PagaImposto()) {
            if (this.salario >= 3000.01) {
                t1 = ((this.salario - 2000.00) - (this.salario - 3000.00)) * 0.08;
                total += t1;
                if (this.salario >= 4500.01) {
                    t2 = ((this.salario - 3000.00) - (this.salario - 4500.00)) * 0.18;
                    t3 = (this.salario - 4500.00) * 0.28;
                    total += t2;
                    total += t3;
                } else {
                    t2 = (this.salario - 3000.00) * 0.18;
                    total += t2;
                }
            } else {
                t1 = (this.salario - 2000.00) * 0.08;
                total += t1;
            }

            PrintTotal(total);
        } else printIsento();
    }
    
    public boolean PagaImposto() {
        return !(this.salario >= 0.00 && this.salario < 2000.00);
    }

    public void read() {
        this.salario = input.nextDouble();
        this.FecharInput(input);
    }

    public static void main(String[] args) {
        Exercicio1 exercicio = new Exercicio1();
        exercicio.read();
        exercicio.imposto();
    }
}
