import java.util.Scanner;

public class Exercicio4 {
	public static int Maior(int a, int b, int c) {
		return Math.max(a, Math.max(b, c));
	}
	
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);

		int n1,n2,n3;
		n1 = input.nextInt();
		n2 = input.nextInt();
		n3 = input.nextInt();
		input.close();

		System.out.println(Maior(n1, n2, n3));
	}

}
