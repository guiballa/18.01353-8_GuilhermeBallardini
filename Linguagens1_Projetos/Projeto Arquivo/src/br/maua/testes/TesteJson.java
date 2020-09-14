package br.maua.testes;

import br.maua.Produtos;
import br.maua.parsers.ProdutoParser;
import org.json.JSONObject;

public class TesteJson {
    public static void main(String[] args) {
        Produtos p1 = new Produtos("Bolinha de golfe",19.99,7);
        JSONObject json = ProdutoParser.toJson(p1);
        System.out.println("Formato Json: " + json);

    }
}
