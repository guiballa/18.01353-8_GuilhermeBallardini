package com.company;

public class Jounin extends RankedNinja {
    public Jounin(String name, String family, String mission) {
        super(name, family, mission);
    }

    @Override
    public void train() {
        System.out.println("Treinando para:" + mission);
    }

    //override em final vai dar erro
    //@Override
    //public void goToMission(){
    //    System.out.println("Indo para missao!:" + mission);
    //}
}
