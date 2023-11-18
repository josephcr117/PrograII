package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.AdminCRUD;

public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // debugging
        System.out.println("Email: " + email);
        System.out.println("Password: " + password);

        AdminCRUD adminCRUD = new AdminCRUD();
        boolean isAuthenticated = adminCRUD.authenticateAdmin(email, password);

        // debugging
        System.out.println("Authentication result: " + isAuthenticated);

        if (isAuthenticated) {
            HttpSession session = request.getSession();
            session.setAttribute("loggedInAdminEmail", email);

            request.getRequestDispatcher("adminaccess.jsp").forward(request, response);
        } else {
            request.setAttribute("error", true);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
            dispatcher.forward(request, response);
        }
    }
}