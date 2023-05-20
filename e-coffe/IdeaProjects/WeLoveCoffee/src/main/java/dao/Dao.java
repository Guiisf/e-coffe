package dao;


import model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Dao {

    public void createUser(User user) {
        String sql = "INSERT INTO USER (EMAIL, PASSWORD) VALUES (?, ?)";

        try (Connection connection = DriverManager.getConnection("jdbc:h2:~/tes", "sa", "")) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.executeUpdate();

            System.out.println("Usuário criado com sucesso!");
        } catch (Exception e) {
            System.out.println("Falha ao criar usuário: " + e.getMessage());
        }
    }
}