package br.com.carsoft;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-car")
public class CreateCarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String comentaria = request.getParameter("comentario");

        System.out.println(comentaria);

        request.getRequestDispatcher("index.jsp").forward(request, response);

        super.doPost(request, response);
    }
}
