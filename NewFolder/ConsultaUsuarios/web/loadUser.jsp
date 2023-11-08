<%-- 
    Document   : loadUser
    Created on : Oct 24, 2023, 8:27:37 PM
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
        int Id = Integer.parseInt(request.getParameter("idUsuarios"));
        Connection con = null;
        ResultSet rs = null;
        
        try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/Usuarios_Sistema", "root", "algofacil");
                Statement statement = con.createStatement();
                rs = statement.executeQuery("select * from Usuarios where idUsuarios=" + Id);
                
                
            } catch (Exception e) {
            }

        %>
    </body>
</html>
