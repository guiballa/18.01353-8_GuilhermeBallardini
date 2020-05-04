package com.company;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        Cachorro cachorro = new Cachorro();
        Lobo lobo = new Lobo();
        Peixe peixe = new Peixe();



        ArrayList<Animal> animals = new ArrayList<>();
        animals.add(cachorro);
        animals.add(lobo);
        animals.add(peixe);


        //método 1
//        System.out.println("For:");
//        for(int i = 0 ; i < animals.size() ; i++){
//            animals.get(i).comer();
//        }
//        System.out.println("");

        //método 2
        System.out.println("Enhanced for (Foreach):");
        for (Animal animal : animals){
            animal.comer();
            if(animal instanceof Canino){
                System.out.println("Canino!");
                ComportamentoCanino((Canino) animal);
            }
            if(animal instanceof Locomover){
                ((Locomover)animal).comoMeLocomovo();
            }
        }

    andarAe(cachorro);
    andarAe(lobo);
    andarAe(peixe);

    }
    public static void ComportamentoCanino(Canino canino){
        canino.cheirar();
    }

    public static void andarAe(Locomover locomover){
        locomover.comoMeLocomovo();
    }
}
