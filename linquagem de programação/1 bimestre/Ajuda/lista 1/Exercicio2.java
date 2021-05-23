import java.util.Scanner;
import java.text.DecimalFormat;
import java.text.NumberFormat;

public class Exercicio2 {
	public static void SalarioFinal(int T, Double S) {
		NumberFormat Precision = DecimalFormat.getNumberInstance();
		Precision.setMinimumFractionDigits(2);
		System.out.println(Precision.format((T * 0.15) + S));
	}

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int TotalDeVendas = input.nextInt();
		Double Salario = input.nextDouble();
		input.close();
		
		SalarioFinal(TotalDeVendas, Salario);
	}

}
