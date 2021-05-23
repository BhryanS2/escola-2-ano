import java.util.Scanner;

public class Exercicio1 {
	
	public static void read() {
		Scanner input = new Scanner(System.in);

		int entrada;
		for (int i = 0; i < 5; i++) {
			entrada = input.nextInt();
			if (entrada >= 0) System.out.println(entrada);
		}
		input.close();
	}

	public static void main(String[] args) {
		read();
	}

}
