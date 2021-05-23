import java.util.Scanner;

public class Determiante {
	public Double determinante;
	public Double[][] matriz;
	public int ordem;
	public Scanner input = new Scanner(System.in);

	public void setMatriz(Double[][] NovaMatriz) {
		matriz = NovaMatriz;
	}

	public void setOrdem(int N) {
		ordem = N;
	}

	public Double[][] getMatriz() {
		return matriz;
	}

	public int getOrdem() {
		return ordem;
	}

	public void readOrdem() {
		int x = input.nextInt();
		setOrdem(x);
	}

	public void readMatriz() {
		int n = getOrdem();
		Double[][] aux = new Double[n][n];
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				aux[i][j] = input.nextDouble();
			}
		}
		setMatriz(aux);
	}

	public void Resposta() {
		System.out.println("Determiante = " + AcharDeterminante(getMatriz()));
	}

	public Double AcharDeterminante(Double[][] matriz) {
		if (matriz.length == 1)
			determinante = matriz[0][0];
		else if (matriz.length == 2)
			determinante = matriz[0][0] * matriz[1][1] - matriz[0][1] * matriz[1][0];
		else if (matriz.length == 3) {
			determinante = matriz[0][0] * matriz[1][1] * matriz[2][2] + matriz[0][1] * matriz[1][2] * matriz[2][0]
					+ matriz[0][2] * matriz[1][0] * matriz[2][1] - matriz[0][2] * matriz[1][1] * matriz[2][0]
					- matriz[0][0] * matriz[1][2] * matriz[2][1] - matriz[0][1] * matriz[1][0] * matriz[2][2];
		} else {

			Double[][] aux;
			int i_aux, j_aux, linha, coluna, i;

			for (i = 0; i < matriz.length; i++) {
				if (matriz[0][i] != 0) {
					aux = new Double[matriz.length - 1][matriz.length - 1];
					i_aux = 0;
					j_aux = 0;
					for (linha = 1; linha < matriz.length; linha++) {
						for (coluna = 0; coluna < matriz.length; coluna++) {
							if (coluna != i) {
								aux[i_aux][j_aux] = matriz[linha][coluna];
								j_aux++;
							}
						}
						i_aux++;
						j_aux = 0;
					}
					determinante += Math.pow(-1, i) * matriz[0][i] * AcharDeterminante(aux);
				}

			}
		}
		
		return determinante;
	}

	public static void main(String[] args) {
		Determiante NovoDetermiante = new Determiante();

		System.out.println("Entre com a ordem da matriz");
		NovoDetermiante.readOrdem();
		NovoDetermiante.readMatriz();
		NovoDetermiante.Resposta();
	}
}
