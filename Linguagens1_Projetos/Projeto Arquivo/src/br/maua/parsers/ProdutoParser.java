package br.maua.parsers;

import br.maua.Produtos;
import org.json.JSONObject;

public class ProdutoParser {
    public static JSONObject toJson(Produtos produtos){
        JSONObject json = new JSONObject();
        json.put("nome",produtos.getNome());
        json.put("valor",produtos.getValor());
        json.put("quantidade",produtos.getQuantidade());
        return json;
    }
    public static Produtos fromJson (JSONObject json){
        Produtos produtos = new Produtos(
                json.getString("nome"),
                json.getDouble("valor"),
                json.getInt("quantidade")
                );
        return produtos;
    }
}
