<%-- 
    Document   : create
    Created on : Nov 6, 2023, 12:22:03 PM
    Author     : brianmorales
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<%
    Connection con = null;
    PreparedStatement ps = null;
    String newToDo = request.getParameter("new-to-do");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/asignacion2", "root", "algofacil");
        String query = "INSERT INTO tasks (task_name)" + "Values('" + newToDo + "')";

        ps = con.prepareStatement(query);

        ps.executeUpdate();

        response.sendRedirect("index.jsp");

    } catch (Exception e) {
        e.printStackTrace();
%>
<script type="text/javascript">
            alert("ERROR: <%= e.getMessage()%>");
            window.location.href = "index.jsp";
</script>
<%
    } finally {
        // Close the resources
        if (ps != null) {
            ps.close();
        }
        if (con != null) {
            con.close();
        }
    }
%>