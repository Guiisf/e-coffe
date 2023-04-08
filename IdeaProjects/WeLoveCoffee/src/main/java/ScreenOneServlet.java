import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/screen-one")
public class ScreenOneServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nomeLogin = request.getParameter("login-screen");

        System.out.println(nomeLogin);

        request.getRequestDispatcher("index.html").forward(request, response);
    }
}
