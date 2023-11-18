package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.ClienteCRUD;
import modelo.Product;
import modelo.ProductCRUD;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //debugging
        System.out.println("Email: " + email);
        System.out.println("Password: " + password);

        ClienteCRUD clienteCRUD = new ClienteCRUD();
        boolean isAuthenticated = clienteCRUD.authenticateCliente(email, password);

        //debugging
        System.out.println("Authentication result: " + isAuthenticated);

        if (isAuthenticated) {
            HttpSession session = request.getSession();
            session.setAttribute("loggedInUserEmail", email);

            List<Product> productList = ProductCRUD.getAllProducts();

            request.setAttribute("productList", productList);

            request.setAttribute("loggedInUserEmail", email);

            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            request.setAttribute("error", true);
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
