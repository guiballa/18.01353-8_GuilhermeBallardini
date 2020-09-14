package br.maua;

        import br.maua.estoque.Estoque;
        import br.maua.parsers.EstoqueParser;
        import br.maua.parsers.ProdutoParser;
        import org.json.JSONArray;
        import org.json.JSONObject;

        import java.io.*;

public class Main {
    public static void main(String[] args) {
        Estoque lista = new Estoque();
        lista.addProduto(new Produtos("Gibi",9.99,5));
        lista.addProduto(new Produtos("HQ",9.99,5));
        lista.addProduto(new Produtos("Revista",9.99,5));
        JSONArray json = EstoqueParser.toJson(lista);
        System.out.println("Formato Json: " + json);
        escreverArquivo("Estoque.json", json);
    }

    private static JSONArray lerArquivo(String nomeDoArquivo) {
        JSONArray json = null;
        File file = new File(nomeDoArquivo);
        try{
            //Cria o fluxo de leitura
            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            json = new JSONArray(bufferedReader.readLine());


            //Feche tudo ao terminar
            fileReader.close();
            bufferedReader.close();

        } catch (Exception exception){
            System.out.println("Algo deu errado");
            exception.printStackTrace();
        }
        return json;
    }

    private static void escreverArquivo(String nomeArquivo, JSONArray json) {
        //Cria um arquivo
        File file = new File(nomeArquivo);
        try{


            //Cria uma conexão para escrever no arquivo
            FileWriter fileWriter = new FileWriter(file);
            //Cria um buffer de writting
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);


            //Escrever no arquivo
            bufferedWriter.write(""+json);


            //Fechar o buffer e escreve no arquivo
            bufferedWriter.close();
            //Fecha os demais fluxos
            fileWriter.close();

        } catch (Exception exception){
            System.out.println("Algo deu errado");
            exception.printStackTrace();
        }
    }
}
