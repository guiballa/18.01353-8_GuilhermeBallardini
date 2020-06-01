package br.maua;

import br.maua.enumerates.AnimalClasses;
import br.maua.interfaces.Eat;
import br.maua.interfaces.Walk;
import br.maua.model.Animal;
import br.maua.model.Cat;
import br.maua.model.Dog;

import java.util.ArrayList;

/**
 * Classe ponto de entrada da aplicação base.<br>
 *     Ela é responsavel por iniciar a aplicação, criando as intancias dos objetos.
 *     Por meio dela, a aplicação é executada.
 * @author Guilherme Ballardini - Guiballa@hotmail.com
 * @since 01/06/2020
 * @version 1.0
 */
public class Main {

    public static void main(String[] args) {
        ArrayList<Animal> myAnimals = new ArrayList<>();
        myAnimals.add(new Dog(AnimalClasses.DOMESTIC, "Thor"));
        myAnimals.add(new Cat(AnimalClasses.CIRCUS, "Gigi"));
        myAnimals.forEach(animal -> {
            howToWalk(animal, 100);
            howToEat(animal, 10);
        });
    }

    public static void howToWalk(Walk walker, int distance){
        System.out.println(walker.walk(distance));
    }

    public static void howToEat(Eat eater, int amount){
        System.out.println(eater.eat(amount));
    }
}
