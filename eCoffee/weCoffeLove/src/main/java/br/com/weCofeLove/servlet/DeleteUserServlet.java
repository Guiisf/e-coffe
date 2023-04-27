package br.com.weCofeLove.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-user")
public class DeleteUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String carId = req.getParameter("id");

        new WeCoffeDAO().deleteUserById(carId);

        resp.sendRedirect("/weCoffeLove/find-all-users");

    }

}