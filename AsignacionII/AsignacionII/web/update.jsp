<%-- 
    Document   : update
    Created on : Nov 6, 2023, 12:22:08 PM
    Author     : brianmorales
--%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <%
        //UPDATE tasks SET task_name = 'Goodbye' WHERE task_name = 'Hello';
        Connection con = null;
        PreparedStatement ps = null;
        String updateToDo = request.getParameter("update-to-do");
        String selectToDo = request.getParameter("select-to-do");

        String updateQuery = "UPDATE tasks SET task_name = '" + updateToDo + "'" + " WHERE task_name = '" + selectToDo + "';";

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