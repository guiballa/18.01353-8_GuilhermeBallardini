package br.maua.implementacoes;

import java.util.LinkedList;

public class LinkedListVersion {
    public static void run(){
        LinkedList<String> cidades = new LinkedList<>();
        cidades.add("Pallet");
        cidades.add("Viridian");
        cidades.add("Pewtee");
        cidades.add("Cerulean");
        cidades.add("Vermiliion");
        cidades.add("Celadon");
        cidades.add("Lavender");
        cidades.add(1,"Konoha");


//        for (String cidade: cidades) {
//            System.out.println(cidade);
//        }

        cidades.forEach((cidade) -> System.out.println(cidade));
    }
}
