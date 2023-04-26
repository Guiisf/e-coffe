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


        User user = new User();


        String nome = request.getParameter("nome");
        user.setNome(nome);
        System.out.println(nome);

        String sobrenome = request.getParameter("sobrenome");
        user.setSobrenome(sobrenome);
        System.out.println(sobrenome);

        String email = request.getParameter("email");
        user.setEmail(email);
        System.out.println(email);

        String cpf = request.getParameter("cpf");
        user.setCpf(cpf);
        System.out.println(cpf);

        String data_Nascimento = request.getParameter("data_nascimento");
        user.setData_nascimento(data_Nascimento);
        System.out.println(data_Nascimento);

        String senha = request.getParameter("senha");
        user.setSenha(senha);
        System.out.println(senha);


        new WeCoffeDAO().createUsuario(user);


        request.getRequestDispatcher("index.html").forward(request, response);


    }

}