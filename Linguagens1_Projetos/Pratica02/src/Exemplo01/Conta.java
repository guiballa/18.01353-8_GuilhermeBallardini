package Exemplo01;

public class Conta {
    //Atributos da Classe
    public int numero ;
    public Cliente cliente = new Cliente();
    public double saldo ;
    //Metodos da classe
    boolean sacar(double valor){
        if (this.saldo < valor){
            return false;
        } else {
//            this.saldo = this.saldo - valor
            this.saldo  -= valor;
            return true;
        }
    }
    void depositar (double valor){
        this.saldo += valor;
    }
    void visualizarSaldo (){
        System.out.println("Saldo: " + this.saldo);
    }
    boolean transferirDinheiro (double valor, Conta destino){
        if (sacar(valor)) {
            destino.depositar(valor);
            return true;
        } else {
            return false;
        }
    }
}
