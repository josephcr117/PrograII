<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Mostrardatosvista
    Created on : Nov 7, 2023, 7:37:07 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <c:forEach var="item" items="${sessionScope.ValorPersonas}">
        
            <h2>Cedula</h2>
            ${item.getCedula}<br>
            <h2>Nombre</h2>
            ${item.getNombre}<br>
            <h2>Apellidos</h2>
            ${item.getApellidos}<br>
        
        
        
    </c:forEach>
        
        
    </body>
</html>
