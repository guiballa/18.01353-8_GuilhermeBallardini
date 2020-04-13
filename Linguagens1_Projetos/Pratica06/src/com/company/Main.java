package com.company;

public class Main {

    public static void main(String[] args) {
        Ninja ninja = new Ninja("Naruto","Uzumaki");
        mostrarTreino(ninja);

        Ninja academicStudent = new AcademicStudent("Sasuke","Uchiha");
        mostrarTreino(academicStudent);

        Ninja chuunin = new Chuunin("Iruka","Umino","Treinar XYZ");
        mostrarTreino(chuunin);

        Jounin jounin = new Jounin("Kakashi", "Hatake", "Train Sasuke");
        mostrarTreino(jounin);

    }

    static void mostrarTreino(Ninja ninja){
        ninja.train();
    }
}
