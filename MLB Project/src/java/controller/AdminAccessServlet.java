package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Admin;
import modelo.AdminCRUD;
import modelo.Product;
import modelo.ProductCRUD;
import modelo.Cliente;
import modelo.ClienteCRUD;

public class AdminAccessServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Admin> admins = new AdminCRUD().getAllAdmins();
        List<Product> products = ProductCRUD.getAllProducts();
        List<Cliente> clientes = new ClienteCRUD().getAllClientes();

        request.setAttribute("admins", admins);
        request.setAttribute("products", products);
        request.setAttribute("clientes", clientes);

        request.getRequestDispatcher("adminaccess.jsp").forward(request, response);
    }
}