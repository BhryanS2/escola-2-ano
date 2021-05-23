import java.util.Scanner;

public class Exercicio3 {
    public int menor, posicao;
    public int[] arr = new int[41];
    public Scanner input = new Scanner(System.in);

    public void FecharInput(Scanner input) {
        input.close();
    }

    public void PrintMenor() {
        System.out.println("Menor: " + this.menor + " Posicao: " + this.posicao);
    }

    public void ehmenor(int n, int posicao) {
        if (n < this.menor) {
            this.menor = n;
            this.posicao = posicao;
            return;
        }
        return;
    }

    public void read(int cont) {
        if (cont >= 41) {
            FecharInput(input);
            return;
        }
        this.arr[cont] = this.input.nextInt();
        //this.arr[cont] = (int) Math.floor(Math.random() * 100);
        cont++;
        read(cont);
    }

    public static void main(String[] args) {
        Exercicio3 exercicio = new Exercicio3();
        int cont = 0;
        exercicio.read(cont);
        exercicio.menor = exercicio.arr[0];
        exercicio.posicao = 0;
        for (int i = 0; i < 41; i++) {
            exercicio.ehmenor(exercicio.arr[i], i);
        }
        exercicio.PrintMenor();
    }
}

/*
 * 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 
 * 72 2 52 23 61 36 35 39 41 72 58 97 4 8 98 45 52 30 57 55 38 83 28 42 7 53 37 79 30 45 92 7 95 14 37 44 95 12 62 92 97
 */