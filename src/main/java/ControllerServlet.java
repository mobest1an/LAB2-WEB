import tools.Result;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {
    ArrayList<Result> results = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String isClear = request.getParameter("clear");
        if (isClear != null) {
            results.clear();
        }

        getServletContext().setAttribute("last-results", results);

        String x = request.getParameter("x-change");
        String y = request.getParameter("y-change");
        String r = request.getParameter("r-change");

        if (x != null && y != null & r != null) {
            request.getRequestDispatcher("/result").forward(request, response);
        } else {
            request.getRequestDispatcher("/main").forward(request, response);
        }
    }
}
