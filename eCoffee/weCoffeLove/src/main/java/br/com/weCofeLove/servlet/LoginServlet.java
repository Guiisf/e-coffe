package br.com.weCofeLove.servlet;

import br.com.weCofeLove.dao.AdmDao;
import br.com.weCofeLove.dao.WeCoffeDAO;
import br.com.weCofeLove.model.Adm;
import br.com.weCofeLove.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");


        Adm admUser = new Adm(username, password);
        boolean isValidAdm = new AdmDao().verifyCredentials(admUser);

        User clientUser = new User(username, password);
        boolean isValidClient = new WeCoffeDAO().verifyCredentials(clientUser);

        if (isValidAdm) {
            req.getSession().setAttribute("username", username);
            resp.sendRedirect("/weCoffeLove/find-all-users");

        } else if (isValidClient) {

            req.getSession().setAttribute("username", username);
            resp.sendRedirect("/weCoffeLove/index.jsp");
        } else {

            req.setAttribute("message", "Credenciais Inválidas, Faça seu cadastro!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }


    }


}