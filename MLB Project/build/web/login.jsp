<%-- 
    Document   : loginRegister
    Created on : Nov 9, 2023, 7:04:50 PM
    Author     : brianmorales
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MLB Pharmacy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script>
            function showErrorMessage() {
                document.getElementById("error-container").style.display = "block";
            }

            function validateForm() {
                return true;
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
                        <a class="btn btn-primary" href="login.jsp">Login</a>
                    </div>
                </div>
            </nav>
        </header>

        <section class="container my-5">
            <h1>Login</h1>
            <p>Login to have your cart updated.</p>
            <hr>
        </section>

        <div class="d-flex justify-content-center align-items-center">
            <div class="card">
                <div class="card-body">
                    <form class="d-flex flex-column align-items-center" action="LoginServlet" method="post" onsubmit="return validateForm()">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>

                        <div class="alert alert-danger mt-3" id="error-container" style="<%= request.getAttribute("error") != null ? "display:block;" : "display:none;"%>">
                            Error. Please check your email and password.
                        </div>
                    </form>
                    <p class="mt-3 text-center">New User? <a href="register.jsp">Register Now</a></p>
                </div>
            </div>
        </div>
        <br></br>

        <footer class="bg-dark text-light text-center py-3">
            &copy; 2023 MLB Pharmacy
        </footer>
    </script>
</body>
</html>