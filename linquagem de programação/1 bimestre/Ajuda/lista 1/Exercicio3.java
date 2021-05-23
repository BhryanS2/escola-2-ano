import java.util.Scanner;
import java.text.DecimalFormat;

public class Exercicio3 {

	public static Double readCircle() {
		Scanner input = new Scanner(System.in);

		Double raio, res;
		raio = input.nextDouble();
		res = 3.14159 * (raio * raio);
		input.close();
		return res;
	}
	
	public static void main(String[] args) {
		DecimalFormat formatador = new DecimalFormat("0.0");
		Double res = readCircle();
		System.out.println( formatador.format(res));
	}

}
