<%-- 
    Document   : register
    Created on : Nov 9, 2023, 7:19:00 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MLB Pharmacy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
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
        <br></br>
        <section class="container mb-5">
            <div class="row">
                <div class="col-md-4">
                    <h2>Products</h2>
                    <img src="img/products.jpg" alt="products" style="max-width: 100%; height: auto;"/>
                    <p>Explore our wide range of pharmaceutical products.</p>
                    <a href="#" class="btn btn-primary">View Products</a>
                </div>
                <div class="col-md-4">
                    <h2>About Us</h2>
                    <img src="img/about-us.jpg" alt="products" style="max-width: 100%; height: auto;"/>
                    <p>Learn more about our mission and values.</p>
                    <a href="#" class="btn btn-primary">About Us</a>
                </div>
                <div class="col-md-4">
                    <h2>Contact</h2>
                    <img src="img/contact-us.png" alt="products" style="max-width: 100%; height: auto;"/>
                    <p>Get in touch with us for any inquiries.</p>
                    <a href="contactUs.jsp" class="btn btn-primary">Contact Us</a>
                </div>
            </div>
            <hr>
        </section>

        <div class="d-flex justify-content-center align-items-center">
            <div class="card">
                <div class="card-body">
                    <form class="d-flex flex-column align-items-center" action="RegisterServlet" method="post">
                        <div class="mb-3">
                            <label for="inputEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="inputEmail" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="inputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="inputPassword" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <br></br>
        <footer class="bg-dark text-light text-center py-3">
            &copy; 2023 MLB Pharmacy
        </footer>

        <script>
            
            const params = new URLSearchParams(window.location.search);
            const registrationStatus = params.get('status');

            
            if (registrationStatus === 'success') {
                alert('Registration complete!'); 
            }
        </script>

    </body>
</html>
