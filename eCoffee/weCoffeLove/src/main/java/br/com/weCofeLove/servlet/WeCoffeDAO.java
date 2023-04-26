package br.com.weCofeLove.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WeCoffeDAO {

    public void createUsuario(User user) {

        String sql = "INSERT INTO USUARIOS (NOME, SOBRENOME, CPF, DATA_NASCIMENTO, EMAIL, SENHA ) VALUES (?, ?, ?, ?, ?, ?)";


        try {

            Connection conexao =
                    DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparancoConexao =
                    null;
            try {
                preparancoConexao = conexao.prepareStatement(sql);
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }

            preparancoConexao.setString(1, user.getNome());
            preparancoConexao.setString(2, user.getSobrenome());
            preparancoConexao.setString(3, user.getCpf());
            preparancoConexao.setString(4, user.getData_nascimento());

            preparancoConexao.setString(5, user.getEmail());
            preparancoConexao.setString(6, user.getSenha());
            preparancoConexao.execute();

            System.out.println("Sucesso na conexao");

        } catch (Exception e) {
            System.out.println("Falha na conexao");
            System.out.println("Falha na conexão!" + e.getMessage());
        }


    }
}



