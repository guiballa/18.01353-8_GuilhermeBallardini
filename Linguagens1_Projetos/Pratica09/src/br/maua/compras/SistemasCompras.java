package br.maua.compras;

import br.maua.models.Produto;

import java.util.ArrayList;
import java.util.List;

public class SistemasCompras {
    private final List<Produto> produtos;
    private final ListaCompras listaDeCompras;

    public SistemasCompras() {
        produtos = new ArrayList<>();
        produtos.add(new Produto("Final Fantasy 7",1,299.00));
        produtos.add(new Produto("Zelda - BOTW",2,299.00));
        produtos.add(new Produto("Mario - Odyssey",3,299.00));
        produtos.add(new Produto("Ajnimal Crossing",4,499.00));

        listaDeCompras = new ListaCompras();
    }

    public void exibirListaProdutos(){
        System.out.println("Lista de produtos disponiveis");
        produtos.forEach((produto) -> System.out.println(produto));
    }

    public void run(){
        exibirListaProdutos();
    }

}
