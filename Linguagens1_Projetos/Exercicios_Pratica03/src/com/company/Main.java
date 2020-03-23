package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Jogo jogoNormal = new Jogo();
        Jogo jogoTBBT = new Jogo();
        double i=1;


        while(i!=0) {
            System.out.print("\033[H\033[2J");
            System.out.flush();
            Scanner scanner = new Scanner(System.in);
            System.out.println("Que jogo gostaria de jogar: ");

            System.out.println("1 - John Kem Po\n2 - The Big Bag Theory version\n3 - Parar" );
            int escolhaDoJogo = Integer.parseInt(scanner.nextLine());
            switch (escolhaDoJogo) {
                case 1:
                    jogoNormal.Jogar();
                    break;
                case 2:
                    jogoTBBT.JogarTBBT();
                    break;
                case 3:
                    i = 0;
                    break;
            }

        }

    }
}
