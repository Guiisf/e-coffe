package br.com.weCofeLove.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-weCoffee")
public class CreateWeCoffeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        String nome = request.getParameter("nome");


        String sobrenome = request.getParameter("sobrenome");


        String email = request.getParameter("email");


        String cpf = request.getParameter("cpf");


        String data_Nascimento = request.getParameter("data_nascimento");


        String senha = request.getParameter("senha");


        User user = new User(id, nome, sobrenome, email, senha, cpf, data_Nascimento);


        new WeCoffeDAO().CreateUser(user);


        //request.getRequestDispatcher("index.html").forward(request, response);

        response.sendRedirect("/weCoffeLove/find-all-users");


    }

}