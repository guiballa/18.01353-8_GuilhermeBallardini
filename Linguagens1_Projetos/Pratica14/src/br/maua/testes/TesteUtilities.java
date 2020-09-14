package br.maua.testes;

import br.maua.Utilities.IdGenerator;
import java.time.LocalDateTime;


public class TesteUtilities {
    public static void main(String[] args) {

        System.out.println("" + LocalDateTime.now().getMonthValue());

        System.out.println("valor random: " + IdGenerator.generateId());
        System.out.println("valor random: " + IdGenerator.generateId());
        System.out.println("valor random: " + IdGenerator.generateId());

        System.out.println("Valor formatado: " +IdGenerator.generateIdFormatado());
        System.out.println("Valor formatado: " +IdGenerator.generateIdFormatado());
        System.out.println("Valor formatado: " +IdGenerator.generateIdFormatado());
    }
}
