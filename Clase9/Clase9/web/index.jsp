<%-- 
    Document   : index
    Created on : Nov 7, 2023, 6:13:15 PM
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
        <h1>Agregar Personas</h1>
        
        <form action="ingresarPersonas" method="post">
            
            <input type="text" name="txtcedula" value="" placeholder="Digite su Cedula"/> <br>
            <input type="text" name="txtnombre" value="" placeholder="Digite su Nombre"/>  <br>
            <input type="text" name="txtapellidos" value="" placeholder="Digite su Apellido"/> <br>
            <br>
            <input type="submit" value="registro"/>
        </form>
    </body>
</html>
