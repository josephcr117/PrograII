<%-- 
    Document   : welcome
    Created on : Nov 11, 2023, 8:07:53 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List" import="modelo.Product" import="modelo.ProductCRUD" import="modelo.Cliente" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String userEmail = (String) session.getAttribute("loggedInUserEmail");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to MLB Pharmacy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">MLB Pharmacy</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Features</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Pricing</a>
                            </li>
                        </ul>
                        <p>Welcome, <%= (String) session.getAttribute("loggedInUserEmail")%>! <a class="btn btn-primary" href="login.jsp">Logout</a>
                    </div>
                </div>
            </nav>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <ul class="nav-item">
                        <button type="button" class="btn btn-primary btn-block" onclick="window.location.href = 'analgesics.jsp'">Medicamentos sin Receta</button>
                        <button type="button" class="btn btn-primary btn-block" onclick="window.location.href = 'personal.jsp'">Articulos de Cuidado Personal</button>
                        <button type="button" class="btn btn-primary btn-block" onclick="window.location.href = 'firstaid.jsp'">Primeros Auxilios</button>
                        <button type="button" class="btn btn-primary btn-block" onclick="window.location.href = 'specials.jsp'">Productos Especiales</button>
                    </ul>


                </div>
                </div>
            </nav>
        </header>

        <section class="container mb-5">
            <div class="row">
                <div class="col-md-4">
                    <h2>Products</h2>
                    <img src="img/products.jpg" alt="products"/>
                    <p>Explore our wide range of pharmaceutical products.</p>
                    <a href="#" class="btn btn-primary">View Products</a>
                </div>
                <div class="col-md-4">
                    <h2>About Us</h2>
                    <img src="img/about-us.jpg" alt="products"/>
                    <p>Learn more about our mission and values.</p>
                    <a href="#" class="btn btn-primary">About Us</a>
                </div>
                <div class="col-md-4">
                    <h2>Contact</h2>
                    <img src="img/contact-us.png" alt="products"/>
                    <p>Get in touch with us for any inquiries.</p>
                    <a href="contactUs.jsp" class="btn btn-primary">Contact Us</a>
                </div>
            </div>
        </section>

        <footer class="bg-dark text-light text-center py-3 mt-5">
            &copy; 2023 MLB Pharmacy
        </footer>

    </body>
</html>