package com.company;

public class Gerente {
    private double salarioBase;
    private final double comissao;

    //Construtor
    public Gerente(double salarioBase){
        this.salarioBase = salarioBase;
        this.comissao = 0.1;
    }

    public double getSalarioBase() {
        return salarioBase;
    }

    public double getComissao() {
        return comissao;
    }

    public double getSalarioFinal(double totalVendasMes){
        return ((1.5*salarioBase) + comissao * totalVendasMes);
    }

    public boolean darAumento(Vendedor vendedor, double aumento){
        double novoSalarioBase = vendedor.getSalarioBase() * (1.0 + aumento);
        return vendedor.setSalarioBase(novoSalarioBase, this);

    }
}


