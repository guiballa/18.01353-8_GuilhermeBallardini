package br.maua.model;

import br.maua.enumerates.AnimalClasses;

/**
 * Classe concreta que representa um cachorro. Ela define a forma que um cachorro anda e come
 * @author Guilherme Ballardini - Guiballa@hotmail.com
 *  *  * @since 01/06/2020
 *  *  * @version 1.0
 */
public class Dog extends Animal {
    public Dog(AnimalClasses animalClass, String name) {
        super(animalClass, name);
    }

    /**
     * Método implementado da interface Eat, que descreve como o animal se alimenta.
     * @param amount Quantos kilos de comida nosso cachorro comeu
     * @return Uma string com as informações do nome do cachorro e a quantidade consumida de alimento, em kilogramas.
     */
    @Override
    public String eat(int amount) {
        return String.format("Dog: %s ate %d kilograms!", this.getName(), amount);
    }

    @Override
    public String walk(int distance) {
        return String.format("Dog: %s walked %d kilometers!", this.getName(), distance);
    }
}
