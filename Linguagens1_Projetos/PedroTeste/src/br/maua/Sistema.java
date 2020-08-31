package br.maua;

import java.util.Scanner;

public class Sistema {
    static private Scanner scanner;
    static private double opcao;

    public static void rodar(double valor){
        scanner = new Scanner(java.lang.System.in);
        opcao = Double.parseDouble(scanner.nextLine());
        System.out.println("O valor é: " + (opcao*valor));
    }

}
