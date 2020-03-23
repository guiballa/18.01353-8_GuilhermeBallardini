package com.company;

public class Jogada {
    private String escolha, ganhoDe1, ganhoDe2, percoDe1, percoDe2;

    public static final String PEDRA = "pedra";
    public static final String TESOURA = "tesoura";
    public static final String PAPEL = "papel";
    public static final String LIZARD = "lizard";
    public static final String SPOKE = "spoke";

    //Contrutor do jogada
    public Jogada(String opcao){
        if(opcao.equals(this.PEDRA)){
            ganhoDe1 = this.TESOURA;
            ganhoDe2 = this.LIZARD;
            percoDe1 = (this.PAPEL);
            percoDe2 = (this.SPOKE);
        } else if(opcao.equals(this.PAPEL)) {
            ganhoDe1 = this.PEDRA;
            ganhoDe2 = this.SPOKE;
            percoDe1 = this.TESOURA;
            percoDe2 = this.LIZARD;
        } else if(opcao.equals(this.TESOURA)) {
            ganhoDe1 = this.PAPEL;
            ganhoDe2 = this.LIZARD;
            percoDe1 = this.PEDRA;
            percoDe2 = this.SPOKE;
        } else if(opcao.equals(this.SPOKE)) {
            ganhoDe1 = this.PEDRA;
            ganhoDe2 = this.TESOURA;
            percoDe1 = this.LIZARD;
            percoDe2 = this.PAPEL;
        } else {
            ganhoDe1 = this.PAPEL;
            ganhoDe2 = this.SPOKE;
            percoDe1 = this.PEDRA;
            percoDe2 = this.TESOURA;
        }

        escolha = opcao;
    }

    public String getEscolha(){
        return this.escolha;
    }

    public String avaliar(Jogada jogada){
        if(jogada.getEscolha().equals(this.ganhoDe1) || jogada.getEscolha().equals(this.ganhoDe2)){
            return "Ganhei!";
        } else if(jogada.getEscolha().equals(this.percoDe1) || jogada.getEscolha().equals(this.percoDe2)){
            return "Perdi!";
        } else{
            return "Empate!";
        }
    }
}
