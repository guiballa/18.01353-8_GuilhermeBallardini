package br.maua.models;

public class Dog {
    private String name;
    private String raça;
    private int peso;

    @Override
    public String toString() {
        return "Dog{" +
                "name='" + getName() + '\'' +
                ", raça='" + getRaça() + '\'' +
                ", peso=" + getPeso() +
                '}';
    }

    public Dog(String name, String raça, int peso) {
        this.name = name;
        this.raça = raça;
        this.peso = peso;
    }

    public String getName() {
        return name;
    }

    public String getRaça() {
        return raça;
    }

    public int getPeso() {
        return peso;
    }
}
