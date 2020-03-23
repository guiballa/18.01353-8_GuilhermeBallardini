package com.company;

import java.util.Scanner;

public class Jogo {

    private Jogador j1, j2;

    public void Jogar() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("informe o nome do Jogador 1:");
        String nome = scanner.nextLine();
        System.out.println("Jogada do Jogador 1:");
        System.out.println("1 - Pedra\n2 - Tesoura\n3 - Papel" );

        int escolha = Integer.parseInt(scanner.nextLine());
        switch (escolha) {
            case 1:
                j1 = new Jogador(nome, Jogada.PEDRA);
                break;
            case 2:
                j1 = new Jogador(nome, Jogada.TESOURA);
                break;
            case 3:
                j1 = new Jogador(nome, Jogada.PAPEL);
                break;
        }

        System.out.println("informe o nome do Jogador 2:");
        String Nome = scanner.nextLine();
        System.out.println("Jogada do Jogador 2:");
        System.out.println("1 - Pedra\n2 - Tesoura\n3 - Papel" );
        escolha = Integer.parseInt(scanner.nextLine());
        switch (escolha){
            case 1:
                j2 = new Jogador(nome, Jogada.PEDRA);
                break;
            case 2:
                j2 = new Jogador(nome, Jogada.TESOURA);
                break;
            case 3:
                j2 = new Jogador(nome, Jogada.PAPEL);
                break;
        }
        System.out.println("J1 - " + j1.Competicao(j2));

    }
}
