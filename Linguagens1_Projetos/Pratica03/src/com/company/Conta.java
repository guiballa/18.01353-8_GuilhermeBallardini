package com.company;

public class Conta {
    private double saldo;
    void sacar(double valor){
        if(saldo >= valor)
            saldo -= valor;
    }
    public void depositar(double valor){
        this.saldo += valor;
    }
    public double consultaSaldo(){
        return this.saldo;
    }
    public Conta(double saldoInicial){
        this.saldo = saldoInicial;
    }

}
