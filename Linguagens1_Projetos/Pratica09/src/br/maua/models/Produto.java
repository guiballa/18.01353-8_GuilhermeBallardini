package br.maua.models;

public class Produto {
    private String name;
    private int codigo;
    private double valor;

    public Produto(String name, int codigo, double valor) {
        this.name = name;
        this.codigo = codigo;
        this.valor = valor;
    }

    @Override
    public String toString() {
        return "Produto{" +
                "name='" + name + '\'' +
                ", codigo=" + codigo +
                ", valor=" + valor +
                '}';
    }

    public String getName() {
        return name;
    }

    public int getCodigo() {
        return codigo;
    }

    public double getValor() {
        return valor;
    }
}
