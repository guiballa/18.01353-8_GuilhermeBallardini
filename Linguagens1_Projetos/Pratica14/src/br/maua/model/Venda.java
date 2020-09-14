package br.maua.model;

import br.maua.Utilities.IdGenerator;

public class Venda {
    private Produto produto;
    private Cliente cliente;
    private Vendedor vendedor;
    private String id;

    public Venda(Produto produto, Cliente cliente, Vendedor vendedor) {
        this.produto = produto;
        this.cliente = cliente;
        this.vendedor = vendedor;
        this.id = IdGenerator.generateIdFormatado();
    }

    @Override
    public String toString() {
        return "Venda{" +
                "produto=" + produto +
                ", cliente=" + cliente +
                ", vendedor=" + vendedor +
                ", id='" + id + '\'' +
                '}';
    }

    public Produto getProduto() {
        return produto;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public Vendedor getVendedor() {
        return vendedor;
    }

    public String getId() {
        return id;
    }
}
