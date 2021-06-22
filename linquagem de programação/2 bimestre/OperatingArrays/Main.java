import java.util.*;

public class Main {
    public static void main(String[] args) {

        // creating two objects: mA and mB
        Matriz mA = new Matriz();
        Matriz mB = new Matriz();

        Scanner input = new Scanner(System.in);

        int n = input.nextInt();
        Integer[][] matriz1 = new Integer[n][n]; // equals to mA
        Integer[][] matriz2 = new Integer[n][n]; // equals to mB

        mA.RandomFill(matriz1);
        mA.setMatriz(matriz1);

        mB.RandomFill(matriz2);
        mB.setMatriz(matriz2);

        mA.print(mA.getMatriz());
        mB.print(mB.getMatriz());

        System.out.println(mA.getDeterminant());

        mA.print(mA.getTranspose());

        mA.print(Matriz.sum(mA.getMatriz(), mB.getMatriz()));

        mA.WhatTypeMatriz();
        mA.isSimetric();

        mB.WhatTypeMatriz();
        mB.isSimetric();

        mB.checkMagicSquare();
        mA.checkMagicSquare();

        input.close();
    }
}
