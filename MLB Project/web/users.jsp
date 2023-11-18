<%-- 
    Document   : users
    Created on : Nov 11, 2023, 5:29:06 PM
    Author     : brianmorales
--%>

<%@page import="java.util.List" import="modelo.Cliente" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <h1>User Information</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>UserId</th>
                    <th>Email</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.email}</td>
                        <td>${user.password}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html