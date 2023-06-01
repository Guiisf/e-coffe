package br.com.weCofeLove.servlet;

import org.h2.tools.RunScript;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet(loadOnStartup = 1)
public class DatabaseServlet extends HttpServlet {

    public DatabaseServlet() {
        loadDatabase();
    }

    public void loadDatabase() {

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            RunScript.execute(connection, new FileReader("src/main/resources/db.sql"));

            System.out.println("Success on load database tables");

        } catch (Exception e) {

            System.out.println("Failed on load database tables");
            System.out.printf("Cause: " + e.getMessage());

        }

    }

}