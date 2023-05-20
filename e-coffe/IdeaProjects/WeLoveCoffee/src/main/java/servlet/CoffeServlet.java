package servlet;

import dao.Dao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-user")
public class CoffeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userEmail = request.getParameter("usuario");
        String userPassword = request.getParameter("password");

        User user = new User();
        user.setEmail(userEmail);
        user.setPassword(userPassword);
        new Dao().createUser(user);

        System.out.println(userEmail + " - " + userPassword);

        request.getRequestDispatcher("index.html").forward(request, response);

    }

}