<%-- 
    Document   : delete
    Created on : Nov 6, 2023, 12:22:16 PM
    Author     : brianmorales
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        //DELETE FROM tasks WHERE task_name;
        Connection con = null;
        PreparedStatement ps = null;
        String deleteToDo = request.getParameter("delete-to-do");

        String updateQuery = "DELETE FROM tasks WHERE task_name = '" + deleteToDo + "';";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/asignacion2", "root", "algofacil");
            ps = con.prepareStatement(updateQuery);
            ps.executeUpdate();
            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
    %>
    <script type="text/javascript">
        alert("An error occurred: <%= e.getMessage()%>");
        window.location.href = "index.jsp";
    </script>
    <%
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }
    %>
</html>
