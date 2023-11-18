package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ClienteCRUD;
import modelo.Cliente;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");



        Cliente newCliente = new Cliente();
        newCliente.setEmail(email);
        newCliente.setPassword(password);

        ClienteCRUD user = new ClienteCRUD();
        user.registerCliente(newCliente);

        //debugging
        user.getAllClientes().forEach(u -> {
            System.out.println("UserId: " + u.getUserId() + ", Email: " + u.getEmail() + ", Password: " + u.getPassword());
        });

        request.getRequestDispatcher("login.jsp").forward(request, response);

    }
}
