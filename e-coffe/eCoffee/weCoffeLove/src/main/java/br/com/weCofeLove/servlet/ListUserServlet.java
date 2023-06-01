package br.com.weCofeLove.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-users")

public class ListUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> usuarios = new WeCoffeDAO().findAllUsers();

        request.setAttribute("usuarios", usuarios);

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);

    }

}