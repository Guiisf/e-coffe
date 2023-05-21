package br.com.weCofeLove.dao;


import br.com.weCofeLove.model.Adm;
import br.com.weCofeLove.model.User;
import br.com.weCofeLove.servlet.ConnectionPoolConfig;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WeCoffeDAO {

    public void CreateUser(User user) {

        String sql = "INSERT INTO USUARIOS (NOME, SOBRENOME, CPF, DATA_NASCIMENTO, EMAIL, SENHA ) VALUES (?, ?, ?, ?, ?, ?)";


        try {

            Connection conexao = ConnectionPoolConfig.getConnection();

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

            Connection conexao = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conexao.prepareStatement(SQL);

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

            conexao.close();

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

            Connection conexao = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conexao.prepareStatement(SQL);
            preparedStatement.setString(1, userId);
            preparedStatement.execute();

            System.out.println("success on delete user with id: " + userId);

            conexao.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

    public void updateUser(User user) {

        String SQL = "UPDATE USUARIOS SET NOME = ?  WHERE ID = ?";

        try {

            Connection conexao = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conexao.prepareStatement(SQL);

            preparedStatement.setString(1, user.getId());
            preparedStatement.setString(2, user.getNome());
            preparedStatement.setString(3, user.getSobrenome());
            preparedStatement.setString(4, user.getCpf());
            preparedStatement.setString(5, user.getData_nascimento());
            preparedStatement.setString(6, user.getEmail());
            preparedStatement.setString(7, user.getSenha());

            preparedStatement.execute();

            System.out.println("Sucusso na atualização do usuario");

            conexao.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }

    }


    public boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USUARIOS WHERE NOME = ?";

        try {

            Connection conexao = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = conexao.prepareStatement(SQL);

            preparedStatement.setString(1, user.getNome());
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucesso em encontrar o nome");

            while (resultSet.next()) {

                String password = resultSet.getString("SENHA");

                if (password.equals(user.getSenha())) {

                    return true;

                }

            }

            conexao.close();

            return false;

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

            return false;

        }

    }

}






