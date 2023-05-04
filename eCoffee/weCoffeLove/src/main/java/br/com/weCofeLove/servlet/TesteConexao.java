package br.com.weCofeLove.servlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TesteConexao {

    public static void main(String[] args) {
        String url = "jdbc:h2:~/test";
        String usuario = "sa";
        String senha = "sa";

        try (Connection conexao = DriverManager.getConnection(url, usuario, senha)) {
            System.out.println("Conexão bem-sucedida!");
        } catch (SQLException e) {
            System.out.println("Falha na conexão: " + e.getMessage());
        }
    }

}
