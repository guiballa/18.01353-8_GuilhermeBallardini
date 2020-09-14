package br.maua;

public class Produtos {
    private String nome;
    private Double valor;
    private int quantidade;

    public Produtos(String nome, Double valor, int quantidade) {
        this.nome = nome;
        this.valor = valor;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public Double getValor() {
        return valor;
    }

    public int getQuantidade() {
        return quantidade;
    }

    @Override
    public String toString() {
        return "Produtos{" +
                "nome='" + nome + '\'' +
                ", valor=" + valor +
                ", quantidade=" + quantidade +
                '}';
    }
}
