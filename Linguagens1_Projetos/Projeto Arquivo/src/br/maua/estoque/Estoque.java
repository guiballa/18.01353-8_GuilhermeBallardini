package br.maua.estoque;

import br.maua.Produtos;

import java.util.ArrayList;
import java.util.List;

public class Estoque {
    private List<Produtos> meuEstoque;

    public Estoque() {
        this.meuEstoque= new ArrayList<>();
    }

    public void addProduto(Produtos produtos){
        this.meuEstoque.add(produtos);
    }

    @Override
    public String toString() {
        return "Lista de Produtos{" +
                "Meu Estoque=" + meuEstoque +
                '}';
    }

    public final List<Produtos> getProduto() {
        return this.meuEstoque;
    }
}

