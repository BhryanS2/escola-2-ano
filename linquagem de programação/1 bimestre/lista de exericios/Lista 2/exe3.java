import java.util.Scanner;

public class exe3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
    
        int NU, M, P=0;

        M = Integer.MIN_VALUE;

        for (int i=1; i<=41; i++) {
            // NU = input.nextInt();
            NU = (int) Math.floor(Math.random() * 100);
            if (NU > M) {
                M = NU;
                P=i;
            }
        }
        System.out.println(M);
        System.out.println(P);
        
        
        entrada.close();
    }
}
