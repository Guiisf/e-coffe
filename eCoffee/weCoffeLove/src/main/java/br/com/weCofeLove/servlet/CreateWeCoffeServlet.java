package br.com.weCofeLove.servlet;

import br.com.weCofeLove.dao.WeCoffeDAO;
import br.com.weCofeLove.model.User;

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

        // Obtenha os parâmetros do formulário
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String data_Nascimento = request.getParameter("data_nascimento");
        String senha = request.getParameter("senha");

        // Crie um objeto User com os parâmetros
        User user = new User(id, nome, sobrenome, email, senha, cpf, data_Nascimento);

        // Chame o método de criação/atualização do usuário no DAO
        WeCoffeDAO userDao = new WeCoffeDAO();
        userDao.CreateUser(user);

        // Defina a mensagem de sucesso na sessão
        request.getSession().setAttribute("successMessage", "Você se registrou com sucesso: " + nome);

        // Redirecione o usuário para a página index.jsp
        response.sendRedirect("/weCoffeLove/index.jsp");
    }
}
