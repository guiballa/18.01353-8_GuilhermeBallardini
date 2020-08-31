package br.maua.implementacoes.json;

import br.maua.enumercoes.Status;
import br.maua.model.Jogo;
import br.maua.parsers.JogoParser;
import org.json.JSONObject;

public class TesteJson {
    public static void main(String[] args) {
        Jogo jogo1 = new Jogo("PC","Cyberpunk");
        jogo1.setStatus(Status.TERMINADO);
        JSONObject json = JogoParser.toJson(jogo1);
        System.out.println("Formato toString: " + jogo1);
        System.out.println("---------------------");
        System.out.println("Formato JSON: " + json);
        Jogo jogo2 = JogoParser.fromJson(json);
        System.out.println("---------------------");
        System.out.println("Jogo 2: " + jogo2);
    }

}
