package br.maua;

import br.maua.model.Usuario;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class ControleInterface {
    @FXML
    private Label lblSaida2;
    @FXML
    private Button btnAction1;
    @FXML
    private TextField txtEntrada;
    @FXML
    private TextField txt1, txt2, txtNome, txtSenha, txtUrl;
    @FXML
    private ImageView imgFoto;

    @FXML
    public void olaMundoCLI(){
        System.out.println("Ola Mundo CLI");
    }
    @FXML
    public void exibirNome(){
        String nome = txtEntrada.getText();
        lblSaida2.setText(nome);
    }

    @FXML
    public void somar(){
        int numero1 = Integer.parseInt(txt1.getText());
        int numero2 = Integer.parseInt(txt2.getText());
        lblSaida2.setText("" + (numero1 + numero2));
    }

    @FXML
    public void cadastrar(){
        Usuario usuario = new Usuario(
                txtNome.getText(),
                txtSenha.getText(),
                txtUrl.getText()
        );
        txtNome.clear();
        txtSenha.clear();
        txtUrl.clear();
        System.out.println("Usuario cadastrado:" + usuario);
    }
    @FXML
    public void previewFoto(){
        try{
            String url = txtUrl.getText();
            Image image = new Image(url);
            imgFoto.setImage(image);
        }
        catch (IllegalArgumentException exception){
            txtUrl.clear();
            txtUrl.requestFocus();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("URL Incorreta");
            alert.setHeaderText("Batata!");
            //Para a exibição do restante do codido do metodo até ele ser concluido (alerta)
            alert.showAndWait();
            //Deixa o restante do código ser executado
//            alert.show();
//            System.out.println("teste");
        }
    }
}
