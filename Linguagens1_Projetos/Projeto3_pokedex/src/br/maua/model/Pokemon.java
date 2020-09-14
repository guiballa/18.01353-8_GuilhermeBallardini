package br.maua.model;

public class Pokemon {
    private String name;
    private double height;
    private double weight;
    private double id;
    private String sprite;
    private String tipo;
    private String description;

    public Pokemon(String name, double height, double weight, double id, String sprite, String tipo, String description) {
        this.name = name;
        this.height = height;
        this.weight = weight;
        this.id = id;
        this.sprite = sprite;
        this.tipo = tipo;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public double getHeight() {
        return height;
    }

    public double getWeight() {
        return weight;
    }

    public double getId() {
        return id;
    }

    public String getSprite() {
        return sprite;
    }

    public String getTipo() {
        return tipo;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "pokemon{" +
                "name='" + name + '\'' +
                ", height=" + height +
                ", weight=" + weight +
                ", id=" + id +
                ", sprite='" + sprite + '\'' +
                ", tipo='" + tipo + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
