import java.util.*;

public class Matriz {
    private Integer[][] matriz;

    public void SimpleFill(Integer[][] matriz) {
        for(int i = 0; i < matriz.length; i++){
            for(int j = 0 ; j < matriz.length; j++){
                matriz[i][j] = new Scanner(System.in).nextInt();
            }
        }
    }

    public void RandomFill(Integer[][] matriz) {
        Random generator = new Random();
        for(int i = 0; i < matriz.length ; i++) {
            for(int k = 0; k < matriz.length ; k++){
                matriz[i][k] = generator.nextInt(10);
            }
        }
    }

    public void setMatriz(Integer[][] matriz) { this.matriz = matriz; }

    public Integer[][] getMatriz() { return this.matriz; }

    public Integer getDeterminant() { return this.calculateDeterminant(this.matriz); }

    public Integer[][] getTranspose() {
        int n = matriz.length;
        Integer[][] matrizT = new Integer[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                matrizT[i][j] = matriz[j][i];
            }
        }
        return matrizT;
    }

    public void isSimetric() {
        Integer [][] novaMatriz= getTranspose();
        Boolean res = true;
        for(int i = 0; i < novaMatriz.length; i++) {
            for(int j = 0; j < novaMatriz.length; j++) {
                if(this.matriz[i][j] != novaMatriz[i][j]) {
                    res = false;
                    break;
                }
            }
        }

        System.out.println((res ? "e" : "nao e") + " uma matriz simetrica");
    }

    public void WhatTypeMatriz() {
        int n = matriz.length;
        Boolean isTypeSuperior = isTypeSuperior(n), isTypeInferior = isTypeInferior(n), isTypeNull = isTypeNull(n);

        if (isTypeSuperior && isTypeInferior && !isTypeNull) {
            System.out.println("e uma matriz identidade");
        } else if (isTypeNull) {
            System.out.println("e uma matriz nula");
        } else {
            System.out.println((isTypeInferior ? "e" : "nao e") + " uma matriz triangular superior");
            System.out.println((isTypeSuperior ? "e" : "nao e") + " uma matriz triangular inferior");
        }
    }

    public void print(Integer[][] matriz) {
        for(int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length ; j++) {
                System.out.print(matriz[i][j] + "  ");
            }
            System.out.println();
        }
        System.out.println(" ");
    }

    public void checkMagicSquare() {

        int coluna[] = new int[matriz.length];
        int linha[] = new int[matriz.length];
        int diagonalprincipal = 0, diagonalSecundaria = 0, somal = 0, somac = 0;

        //soma das colunas
        for (int c = 0;c < matriz.length;c++) {
            somac = 0;
            for (int l = 0;l < matriz.length;l++) somac += matriz[l][c];
            coluna[c] = somac;
        }

        //soma das linhas
        for (int l = 0;l < matriz.length;l++) {
            somal = 0;
            for (int c = 0;c < matriz.length;c++) somal += matriz[l][c];
            linha[l] = somal;
        }

        //diagonal principal
        for (int i = 0; i < matriz.length; i++) diagonalprincipal += matriz[i][i];

        //diagonal Secundária
        for (int i = 0; i < matriz.length; i++) diagonalSecundaria += matriz[i][matriz.length - 1 - i];

        if (somal == somac && somac == diagonalprincipal && diagonalprincipal == diagonalSecundaria)
            System.out.println("e um cubo magico, sua soma e: " + diagonalSecundaria);
        else System.out.println("nao e um cubo magico");
    }

    public static Integer [][] sum(Integer [][] m1, Integer [][] m2) {
        Integer [][] sumArray = new Integer[m1.length][m2.length];
        for(int i = 0; i < sumArray.length; i++) {
            for (int j = 0; j < sumArray.length; j++) {
                sumArray[i][j] = m1[i][j] + m2[i][j];
            }
        }
        return sumArray;
    }

    public static Integer[][] sub(Integer[][] m1, Integer[][] m2) {
        Integer [][] diffArray = new Integer[m1.length][m2.length];
        for(int i = 0; i < diffArray.length; i++) {
            for (int j = 0; j < diffArray.length; j++) {
                diffArray[i][j] = m1[i][j] - m2[i][j];
            }
        }
        return diffArray;
    }

    public static Integer[][] multiply(Integer[][] m1, Integer[][] m2) {
        int sm;
        Integer productArray [][] = new Integer[m1.length][m2.length];
        if(m1.length == m2.length) {
            for (int i=0; i<m1.length; i++) {
                for (int j=0; j<m1.length; j++) {
                    sm = 0;
                    for (int k=0; k<m1.length; k++) {
                        sm += (m1[i][k] * m2[k][j]); // m1[0][0] * m2[0][1]
                    }
                    productArray[i][j] = sm;
                }
            }
            return productArray;
        } else {
            System.out.println("Impossível multiplicar");
        }
        return productArray;
    }

    private Integer calculateDeterminant(Integer[][] matriz) {

        Integer determinant = 0;
        if (matriz.length == 1) {

            determinant = matriz[0][0];
        } else if (matriz.length == 2) {

            determinant = matriz[0][0] * matriz[1][1] - matriz[0][1] * matriz[1][0];
        } else if (matriz.length == 3) {

            determinant = matriz[0][0] * matriz[1][1] * matriz[2][2] + matriz[0][1] * matriz[1][2] * matriz[2][0]
                    + matriz[0][2] * matriz[1][0] * matriz[2][1] - matriz[0][2] * matriz[1][1] * matriz[2][0]
                    - matriz[0][0] * matriz[1][2] * matriz[2][1] - matriz[0][1] * matriz[1][0] * matriz[2][2];
        } else {
            Integer[][] aux;
            Integer i_aux, j_aux, linha, coluna, i;

            for (i = 0; i < matriz.length; i++) {
                if (matriz[0][i] != 0) {
                    aux = new Integer[matriz.length - 1][matriz.length - 1];
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
                    determinant += (int) Math.pow(-1, i) * matriz[0][i] * calculateDeterminant(aux);
                }

            }
        }
        return determinant;
    }

    private Boolean isTypeSuperior(int n) {
        Boolean isTypeSuperior = true;
        // Triangular superior
        for (int i = 0; i < n; i++)
            for (int j = i + 1; j < n; j++)
                if (matriz[i][j] != 0)
                    isTypeSuperior = false;

        return isTypeSuperior;
    }

    private Boolean isTypeInferior(int n) {
        Boolean isTypeInferior = true;
        // triangular inferior
        for (int i = 0; i < n; i++)
            for (int j = 0; j < i; j++)
                if (matriz[i][j] != 0)
                    isTypeInferior = false;
        return isTypeInferior;
    }

    private Boolean isTypeNull(int n) {
        Boolean isTypeNull = true;
        // triangular inferior
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                if (matriz[i][j] != 0)
                    isTypeNull = false;
        return isTypeNull;
    }
}