<%-- 
    Document   : contactUs
    Created on : Nov 9, 2023, 7:32:32 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MLB Pharmacy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <style>
            .container-contact-us {
                max-width: 600px;
                margin: 0 auto;
            }

            .form-contact-us {
                margin-bottom: 20px;
            }

            label, input, textarea {
                display: block;
                width: 100%;
                font-size: 16px;
            }

            input, textarea {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button {
                padding: 10px 20px;
                font-size: 16px;
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            button:hover {
                background-color: #0056b3;
            }
        </style>
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
    </header>

    <body>
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
        <div class="container-contact-us">
            <h1>Contact Us</h1>
            <form>
                <div class="form-contact-us">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>
                <div class="form-contact-us">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>
                <div class="form-contact-us">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-contact-us">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="6" required></textarea>
                </div>
                <button type="submit">Submit</button>
            </form>
        </div>
        <br></br>
        <footer class="bg-dark text-light text-center py-3">
            &copy; 2023 MLB Pharmacy
        </footer>
    </body>
</html>
