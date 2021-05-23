import java.util.*;

public class GPA {

    public static Double AddNota(Double nota){
        if(nota > 9) return (4.0 * 3);
        else if(nota > 7 && nota < 9)  return (3.0 * 3);
        else if(nota > 5 && nota < 7)  return (2.0 * 3);
        else if(nota > 3 && nota < 5)  return (1.0 * 3);
        else  return (0.0);
    }

    public static void main(String[] args) {
        ArrayList<Double> Notas2020 = new ArrayList<Double>(), Notas2021= new ArrayList<Double>();
        Scanner input = new Scanner(System.in);
        Integer Peso = 3 * 10 + 3 * 10;
        Double Somatorio = 0.0, Nota = 0.0;

        System.out.println("Entre com as notas de 2020");
        for (int i = 0; i < 10; i++) {
            Nota = input.nextDouble();
            Notas2020.add(AddNota(Nota));
            Somatorio += Notas2020.get(i);
        }

        System.out.println("Entre com as notas de 2021");
        for (int i = 0; i < 10; i++) {
            Nota = input.nextDouble();
            Notas2021.add(AddNota(Nota));
            Somatorio += Notas2021.get(i);
        }

        System.out.println("GPA = "+ (Somatorio / Peso));
        input.close();
    }
}
