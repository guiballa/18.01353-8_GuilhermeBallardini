package br.maua.model;

import br.maua.Interfaces.Validator;

import java.util.Objects;

public class Vendedor implements Validator {
    private String id;
    private String nome;
    private String password;

    public Vendedor(String id, String nome, String password) {
        this.id = id;
        this.nome = nome;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }



    @Override
    public String toString() {
        return "Vendedor{" +
                "id='" + id + '\'' +
                ", nome='" + nome + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    @Override
    public boolean validate(String pass) {
        return hashCode() == pass.hashCode();
    }




    @Override
    public int hashCode() {
        return Objects.hash(password);
    }

    public String getPasswordHash() {
        return "" + hashCode();
    }
}
