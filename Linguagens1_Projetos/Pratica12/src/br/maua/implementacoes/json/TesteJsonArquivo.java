package br.maua.implementacoes.json;

import br.maua.model.Jogo;
import br.maua.model.ListaDeJogos;
import br.maua.parsers.ListaDeJogosParser;
import org.json.JSONArray;

import java.io.*;

public class TesteJsonArquivo {
    public static void main(String[] args) {
//        ListaDeJogos lista = new ListaDeJogos();
//        lista.addJogo(new Jogo("PC","Minecraft"));
//        lista.addJogo(new Jogo("PC","Cyberpunk"));
//        lista.addJogo(new Jogo("PC","CS:GO"));
//        lista.addJogo(new Jogo("PC","Terraria"));
//        lista.addJogo(new Jogo("PS4","God of War"));
//        lista.addJogo(new Jogo("PS4","The Last of Us"));
//        lista.addJogo(new Jogo("PC","Ghost of Tsushima"));
//
//        JSONArray json = ListaDeJogosParser.toJson(lista);
//        System.out.println("Array: " + json);
//        escreverArquivo("Jogos.json" , json);
        ListaDeJogos lista = ListaDeJogosParser.fromJson(lerArquivo("jogos.json"));
        System.out.println(""+ lista);
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
