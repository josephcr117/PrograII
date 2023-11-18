package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ClienteCRUD;
import modelo.Cliente;

public class UsersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ClienteCRUD clienteCRUD = new ClienteCRUD();

        List<Cliente> users = clienteCRUD.getAllClientes();

        //debugging
        System.out.println("List of all users:");
        for (Cliente user : users) {
            System.out.println("UserId: " + user.getUserId() + ", Email: " + user.getEmail() + ", Password: " + user.getPassword());
        }

        if (users != null) {
            request.setAttribute("users", users);
        }

        request.getRequestDispatcher("users.jsp").forward(request, response);
    }
}
