package br.com.weCofeLove.servlet;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WeCoffeDAO {

    public void CreateUser(User user) {

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

    public List<User> findAllUsers() {

        String SQL = "SELECT * FROM USUARIOS";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> usuarios = new ArrayList<>();

            while (resultSet.next()) {

                String userId = resultSet.getString("id");
                String userNome = resultSet.getString("nome");
                String userSobrenome = resultSet.getString("sobrenome");
                String userCPF = resultSet.getString("CPF");
                String userData = resultSet.getString("Data_Nascimento");
                String userEmail = resultSet.getString("email");
                String userSenha = resultSet.getString("senha");

                User usuario = new User(userId, userNome, userSobrenome, userEmail, userSenha, userCPF, userData);

                usuarios.add(usuario);

            }

            System.out.println("Sucesso no comando Selec * Usuarios");

            connection.close();

            return usuarios;

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Falha na conexão!" + e.getMessage());

            return Collections.emptyList();

        }

    }

    public void deleteUserById(String userId) {

        String SQL = "DELETE USUARIOS WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, userId);
            preparedStatement.execute();

            System.out.println("success on delete user with id: " + userId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

}




