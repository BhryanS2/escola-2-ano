import java.util.Scanner;

public class Exercicio2 {
    public int x;
    public Scanner input = new Scanner(System.in);

    public void FecharInput(Scanner input) {
        input.close();
    }

    public boolean ehpar(int n) {
        return n % 2 == 0;
    }

    public void printpar(int n) {
        System.out.println(n);
    }

    public void De1aX() {
        int n = this.x;
        for(int i = 1; i <= n; i++) {
            if(ehpar(i)) printpar(i);
        }
    }

    public void read() {
        this.x = this.input.nextInt();
        this.FecharInput(this.input);
    }
    
    public static void main(String[] args) {
        Exercicio2 exercicio = new Exercicio2();
        exercicio.read();
        exercicio.De1aX();
    }
}
