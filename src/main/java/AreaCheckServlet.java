import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "AreaCheckServlet")
public class AreaCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=windows-1251");
        String xChange = request.getParameter("x-change");
        String yChange = request.getParameter("y-change");
        String rChange = request.getParameter("r-change");
        double x;
        double y;
        double r;

        try {
            x = Double.parseDouble(xChange);
            y = Double.parseDouble(yChange);
            r = Double.parseDouble(rChange);
        } catch (NumberFormatException e) {
            request.getRequestDispatcher("/error_page.jsp").forward(request, response);
            return;
        }

        if (!validate(x, y, r)) {
            request.getRequestDispatcher("/error_page.jsp").forward(request, response);
            return;
        }

        request.setAttribute("x", x);
        request.setAttribute("y", y);
        request.setAttribute("r", r);

        long start = System.nanoTime();

        if (checkArea(x, y, r)) {
            request.setAttribute("hit", "Да");
        } else {
            request.setAttribute("hit", "Нет");
        }

        long end = System.nanoTime();
        double elapsedTime = (double) (end - start) / 1000;
        request.setAttribute("time", elapsedTime);

        request.getRequestDispatcher("/area_check.jsp").forward(request, response);
    }

    private boolean validateX(double x) {
        if (x >= -2 && x <= 2) {
            return true;
        } else return false;
    }

    private boolean validateY(double y) {
        if (y > -3 && y < 3) {
            return true;
        } else return false;
    }

    private boolean validateR(double r) {
        if (r >= 1 && r <= 5) {
            return true;
        } else return false;
    }

    private boolean validate(double x, double y, double r) {
        return validateX(x) && validateY(y) && validateR(r);
    }

    private boolean checkArea(double x, double y, double r) {
        if (x >= 0 && y >= 0 && (Math.pow(x, 2) + Math.pow(y, 2)) <= Math.pow(r, 2)) {
            return true;
        }

        if (x <= 0 && y >= 0 && x - y >= (-r)) {
            return true;
        }

        if (x <= 0 && y <= 0 && x >= -r / 2 && y >= -r) {
            return true;
        }

        return false;
    }
}
