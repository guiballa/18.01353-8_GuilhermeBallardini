package com.company;

public class Main {

    public static void main(String[] args) {
        System.out.println("Total de objetos: " + MinhaClasse.getContaObjetos());
        MinhaClasse m1 = new MinhaClasse();
        MinhaClasse m2 = new MinhaClasse();
        MinhaClasse m3 = new MinhaClasse();
        System.out.println("Total objetos: " + MinhaClasse.getContaObjetos());

        Personagem p1 = new Personagem("allmight")
        Personagem p2 = new Personagem("allmight")
        System.out.println("URL P1 - " + p1.getUrl());
        System.out.println("URl P2 - " + p2.getUrl());
    }
}
