<%-- 
    Document   : payNow
    Created on : Nov 13, 2023, 7:56:50 PM
    Author     : brianmorales
--%>

<%@page import="modelo.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>Pay Now</title>
        <style>
            .card-container {
                max-width: 600px;
                margin: auto;
                margin-top: 20px;
            }
            .card-body{
                padding: 10px;
                margin-bottom: 10px;
                border-radius: 5px;
                text-align: center;
            }
            ul {
                text-align: center;
                margin-right: 30px;
            }
        </style>
        <%
            List<Product> cart = (List<Product>) session.getAttribute("cart");
        %>
        <script>
            function simulatePayment() {
                var firstName = document.getElementsByName("firstName")[0].value;
                var lastName = document.getElementsByName("lastName")[0].value;
                var address = document.getElementsByName("address")[0].value;
                var cardNumber = document.getElementsByName("cardNumber")[0].value;
                var cvv = document.getElementsByName("cvv")[0].value;
                if (firstName === '' || lastName === '' || address === '' || cardNumber === '' || cvv === '') {
                    alert("Please fill out all the required fields.");
                } else {
                    alert("Payment processed successfully! Your order will be shipped to " + address );
                }
            }
        </script>
    </head>
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
    <body>
        <div class="card-container">

            <div class="card">
                <div class="card-body">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Summary of Purchase</h3>
                            <ul>
                                <% double totalAmount = 0;
                                    for (Product product : cart) {
                                        totalAmount += product.getPrice();
                                %>
                                <ul><%= product.getName()%> - <%= product.getPrice()%></ul>
                                <% }%>
                            </ul>
                            <p>Total Amount: <%= totalAmount%></p>
                        </div>
                    </div>
                    <br>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">First Name</span>
                        <input type="text" class="form-control" name="firstName" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">Last Name:</span>
                        <input type="text" class="form-control" name="lastName" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">Address:</span>
                        <input type="text" class="form-control" name="address" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">Card Number:</span>
                        <input type="text" class="form-control" name="cardNumber" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">CVV:</span>
                        <input type="text" class="form-control" name="cvv" required>
                    </div>
                    <button type="submit" class="btn btn-primary" onclick="simulatePayment()">Submit Payment</button>
                </div>
            </div>
        </div>
        <br>
        <footer class="bg-dark text-light text-center py-3">
            &copy; 2023 MLB Pharmacy
        </footer>
    </body>
</html>