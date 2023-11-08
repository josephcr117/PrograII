<%-- 
    Document   : insertUser
    Created on : Oct 17, 2023, 8:22:36 PM
    Author     : brianmorales
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String userName = request.getParameter("userName");
            String name = request.getParameter("txtName");
            String email = request.getParameter("email");
            int age = Integer.parseInt((request.getParameter("age")));
            String gender = request.getParameter("gender");
            String password = request.getParameter("password");
            int idrol = Integer.parseInt((request.getParameter("idRole")));

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Usuarios_Sistema", "root", "algofacil");
            Statement statement = connection.createStatement();
            String insertsql = "INSERT INTO Usuarios (userName, name, email, age, gender, password, IdRoles) "
                    + "VALUES ('" + userName + "', '" + name + "', '" + email + "', " + age + ", '" + gender + "', '" + password + "', " + idrol + ")";

            statement.executeUpdate(insertsql);

            out.println("<script type='text/javascript'>alert('User created');</script>");
            //Redirigirnos 
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.include(request, response);

        %>

    </body>
</html>
