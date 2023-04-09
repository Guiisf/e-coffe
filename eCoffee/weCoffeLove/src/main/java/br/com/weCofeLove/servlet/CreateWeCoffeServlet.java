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

        String email = request.getParameter("email");

        User nomeUsuario = new User();
        nomeUsuario.setEmail(email);
        new WeCoffeDAO().createUsuario(nomeUsuario);

        System.out.println(email);

        String senha = request.getParameter("senha");

        User senhaUsuario = new User();
        senhaUsuario.setSenha(senha);
        new WeCoffeDAO().createUsuario(senhaUsuario);

        System.out.println(senha);

        request.getRequestDispatcher("index.html").forward(request, response);


    }

}