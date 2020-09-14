package br.maua.parsers;

import br.maua.estoque.Estoque;
import org.json.JSONArray;
import org.json.JSONObject;

public class EstoqueParser {
    public static JSONArray toJson(Estoque estoque){
        JSONArray json = new JSONArray();
        estoque.getProduto().forEach(produtos -> {
            json.put(ProdutoParser.toJson(produtos));
        });
        return json;
    }
    public static Estoque fromJson(JSONArray json){
        Estoque lista = new Estoque();
        json.forEach( item -> {
            lista.addProduto(ProdutoParser.fromJson((JSONObject) item));
        });
        return lista;
    }
}
