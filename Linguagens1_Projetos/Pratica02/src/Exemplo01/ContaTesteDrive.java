package Exemplo01;

public class ContaTesteDrive {
    public static void main(String[] args) { // usar "psvm" + tab para criar automatico
        Conta c1; //Criando um objeto c1 e guardando uma Conta, sem nada dentro(nullPointer)
        //Isntancia Conta - coloca a referencia de um objeto
        c1 = new Conta();
        //Aceso titular da conta
        c1.cliente.nome = "Guilherme";
//        System.out.println("Titular: " + c1.titular);
        Conta c2 = new Conta();
        c2.cliente.nome = "Goku";
//        System.out.println("Titular C2 :" + c2.titular);
        c1.saldo = 2000;
        c1.visualizarSaldo();
        System.out.println();
        c1.transferirDinheiro(1500,c2);
        System.out.println();
        c1.visualizarSaldo();
        c2.visualizarSaldo();

    }
}
