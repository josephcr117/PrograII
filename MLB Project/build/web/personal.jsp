<%-- 
    Document   : personal
    Created on : Nov 13, 2023, 4:34:26 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List" import="modelo.Product" import="modelo.ProductCRUD" import="modelo.Cliente" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuidado Personal - MLB Pharmacy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <script>
            function addToCart(productId, productName, productPrice) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "AddToCartServlet", true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                var params = "productId=" + productId + "&productName=" + encodeURIComponent(productName) + "&productPrice=" + productPrice;
                xhr.send(params);
            }
        </script>
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
                    <form class="d-flex">
                        <a href="cart.jsp" class="btn btn-outline-success">View Cart</a>
                    </form>
                </div>
                </div>
            </nav>
        </header>

        <section class="container mt-3">
            <h2>Artículos de Cuidado Personal</h2>
            <div class="row">
                <!-- Producto 1 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/personal1.jpg" class="card-img-top" alt="Personal 1">
                        <div class="card-body">
                            <h5 class="card-title">Pasta y cepillo Oral B</h5>
                            <p class="card-text">Combo perfecto para una boca saludable</p>
                            <p class="card-text">Precio: $30.00</p>
                            <button class="btn btn-primary" onclick="addToCart(5, 'Pasta y cepillo Oral B', 30.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Producto 2 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/personal2.jpg" class="card-img-top" alt="Personal 2">
                        <div class="card-body">
                            <h5 class="card-title">Protector solar Eucerin</h5>
                            <p class="card-text">Experimenta la protección avanzada con Eucerin</p>
                            <p class="card-text">Precio: $80.00</p>
                            <button class="btn btn-primary" onclick="addToCart(6, 'Protector solar Eucerin', 80.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Producto 3 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/personal3.jpg" class="card-img-top" alt="Personal 3">
                        <div class="card-body">
                            <h5 class="card-title">Crema Hidratante CeraVe</h5>
                            <p class="card-text">Sumergete en la hidratacion profunda con CeraVe, la crema que cuida tu piel</p>
                            <p class="card-text">Precio: $25.00</p>
                            <button class="btn btn-primary" onclick="addToCart(7, 'Crema Hidratante CeraVe', 25.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Producto 4 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/personal4.jpg" class="card-img-top" alt="Personal 4">
                        <div class="card-body">
                            <h5 class="card-title">Shampoo Pantene</h5>
                            <p class="card-text">Cuida de tu cabello con el mejor shampoo Pantene</p>
                            <p class="card-text">Precio: $45.00</p>
                            <button class="btn btn-primary" onclick="addToCart(8, 'Shampoo Pantene', 45.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="bg-dark text-light text-center py-3 mt-5">
            &copy; 2023 MLB Pharmacy
        </footer>

    </body>
</html>
