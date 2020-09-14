package br.maua.testes;

import br.maua.model.Produto;

import java.sql.*;

public class Aplicacao {
    public void run(){
        try {
            Connection connection = DriverManager.getConnection("jdbc:sqlite:dados.db");
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("SELECT * FROM produtos");
            while (result.next()){
                Produto produto = new Produto(
                        result.getString("codigo"),
                        result.getString("nome"),
                        result.getString("descricao"),
                        result.getDouble("custo"),
                        result.getDouble("valor"),
                        result.getInt("quantidade")
                        );
                System.out.println(produto);
            }
            result.close();

            //inserir novo produto

            Produto produto = new Produto("2000","Water cooler 120mm","Cooler",80,240,5);
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "INSERT INTO produtos (codigo, nome, descricao, custo, valor, quantidade) VALUES (?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, produto.getCodigo());
            preparedStatement.setString(2, produto.getNome());
            preparedStatement.setString(3, produto.getDescricao());
            preparedStatement.setDouble(4, produto.getCusto());
            preparedStatement.setDouble(5, produto.getValor());
            preparedStatement.setInt(6, produto.getQuantidade());
            //Executa o PreparedStatement
            int Retorno = preparedStatement.executeUpdate();
            System.out.println("Retorno:" + Retorno);
            //Salva as modificações no banco
            //connection.commit();

            //Exibe o conteudo do banco
            result = statement.executeQuery("SELECT * FROM produtos");
            while (result.next()){
                Produto newproduto = new Produto(
                        result.getString("codigo"),
                        result.getString("nome"),
                        result.getString("descricao"),
                        result.getDouble("custo"),
                        result.getDouble("valor"),
                        result.getInt("quantidade")
                );
                System.out.println(newproduto);
            }
            result.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
