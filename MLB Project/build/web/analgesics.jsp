<%-- 
    Document   : analgesics
    Created on : Nov 12, 2023, 7:41:57 PM
    Author     : Leyner Bermudez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List" import="modelo.Product" import="modelo.ProductCRUD" import="modelo.Cliente" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medicamentos sin receta - MLB Pharmacy</title>
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
            <h2>Medicamentos sin Receta</h2>
            <div class="row">
                <!-- Producto 1 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/analgesic1.jpg" class="card-img-top" alt="Analgesic 1">
                        <div class="card-body">
                            <h5 class="card-title">Ibuprofeno</h5>
                            <p class="card-text">Alivia el dolor y reduce la inflamación</p>
                            <p class="card-text">Precio: $8.00</p>
                            <button class="btn btn-primary" onclick="addToCart(1, 'Ibuprofeno', 8.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Producto 2 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/analgesic2.jpg" class="card-img-top" alt="Analgesic 2">
                        <div class="card-body">
                            <h5 class="card-title">Antihistamínicos</h5>
                            <p class="card-text">Antihistamínicos de primera generacion</p>
                            <p class="card-text">Precio: $20.00</p>
                            <button class="btn btn-primary" onclick="addToCart(3, 'Antihistamínicos', 20.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>

                <!-- Producto 3 -->
                <div class="col-md-3 mb-4">
                    <div class="card">
                        <img src="img/analgesic3.jpeg" class="card-img-top" alt="Analgesic 3">
                        <div class="card-body">
                            <h5 class="card-title">Vitaminas</h5>
                            <p class="card-text">Vitaminas B1, B2, B5, B6 y B12 para subir las defensas</p>
                            <p class="card-text">Precio: $35.00</p>
                            <button class="btn btn-primary" onclick="addToCart(2, 'Vitaminas', 35.00)">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Producto 3 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="img/analgesic4.jpg" class="card-img-top" alt="Analgesic 3">
                    <div class="card-body">
                        <h5 class="card-title">Gravol</h5>
                        <p class="card-text">Combate los mareos</p>
                        <p class="card-text">Precio: $10.00</p>
                        <button class="btn btn-primary" onclick="addToCart(4, 'Gravol', 10.00)">Add to Cart</button>
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
