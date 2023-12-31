<%-- 
    Document   : cart
    Created on : Nov 13, 2023, 6:18:25 PM
    Author     : brianmorales
--%>

<%@ page import="java.util.List" %>
<%@ page import="modelo.Product" %>
<%@ page import="modelo.ProductCRUD" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>Cart</title>
        <style>
            .btn.btn-success.pay-now-btn {
                text-align: center;
                margin-left: 250px;
                margin-bottom: 25px;
            }
            .cart-container {
                max-width: 600px;
                margin: auto;
                margin-top: 20px;
            }
            .cart-item {
                padding: 10px;
                margin-bottom: 10px;
                background-color: #f8f9fa;
                border-radius: 5px;
                text-align: center;
            }
        </style>
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
                        <a class="btn btn-primary ms-10" href="login.jsp">Login</a>
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
                        <a href="cart.jsp" class="btn btn-outline-success">
                            View Cart 
                            <%
                                Integer cartItemCount = (Integer) session.getAttribute("cartItemCount");
                                if (cartItemCount != null && cartItemCount > 0) {
                            %>
                            <span class="badge bg-secondary">
                                <%= cartItemCount%>
                            </span>
                            <% }%>
                        </a>
                    </form>
                </div>
                </div>
            </nav>
        </header>
        <div class="cart-container">
            <h2>Shopping Cart</h2>
            <form action="processPayment.jsp" method="post">
                <div class="container">
                    <% List<Product> cart = (List<Product>) session.getAttribute("cart"); %>
                    <% if (cart != null && !cart.isEmpty()) {
                            for (Product product : cart) {%>
                    <div class="cart-item">
                        <p><%= product.getName()%> - <%= product.getPrice()%></p>
                    </div>
                    <% }
                    } else { %>
                    <p>Your cart is empty.</p>
                    <% }%>
                    <button type="submit" class="btn btn-success pay-now-btn">Pay Now</button>
                </div>
            </form>
        </div>

        <footer class="bg-dark text-light text-center py-3">
            &copy; 2023 MLB Pharmacy
        </footer>

    </body>
</html>
