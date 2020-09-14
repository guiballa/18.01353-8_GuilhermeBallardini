package br.maua;

import br.maua.testes.Aplicacao;
import br.maua.testes.AplicacaoDAO;

public class Main {

    public static void main(String[] args) {
        //Aplicacao app = new Aplicacao();
        //app.run();
        AplicacaoDAO appDAO = new AplicacaoDAO();
        appDAO.run();
    }
}
