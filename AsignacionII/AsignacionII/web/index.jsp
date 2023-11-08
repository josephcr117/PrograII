<%-- 
    Document   : index
    Created on : Nov 6, 2023, 11:40:01 AM
    Author     : brianmorales
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignacion II</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="container mt-4">
            <h1>To-do App</h1>

            <!-- Create Task -->
            <form action="create.jsp" method="post">
                <div class="form-group">
                    <label for="new-to-do">New To-do</label>
                    <input type="text" class="form-control" id="new-to-do" name="new-to-do" required>
                </div>
                <button type="submit" class="btn btn-primary">Create To-do</button>
            </form>

            <hr>

            <!-- Read Task -->
            <h2>Pending to-do</h2>
            <form action="update.jsp" method="post">
                <%
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                %>
                <div class="form-group">
                    <label for="select-to-do">Select To-Do</label>
                    <select class="form-control" id="select-to-do" name="select-to-do" required>
                        <%
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/asignacion2", "root", "algofacil");
                                String query = "SELECT * from tasks;";
                                st = con.createStatement();
                                rs = st.executeQuery(query);

                                while (rs.next()) {
                        %>
                        <option value="<%= rs.getString("task_name")%>"><%= rs.getString("task_name")%></option>
                        <%
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            } finally {
                                if (rs != null) {
                                    rs.close();
                                }
                                if (st != null) {
                                    st.close();
                                }
                                if (con != null) {
                                    con.close();
                                }
                            }
                        %>
                    </select>
                </div>

                <hr>

                <!-- Update Task -->
                <h2>Update a to-do</h2>
                <form action="update.jsp" method="post">
                    <div class="form-group">
                        <label for="update-to-do">Please select a pending To-Do to update</label>
                        <input type="text" class="form-control" id="update-to-do" name="update-to-do" required>
                    </div>
                    <button type="submit" class="btn btn-success">Update Selected to-do</button>
                </form>

                <hr>

                <!-- Delete Task -->
                <h2>Delete To Do </h2>
                <form action="delete.jsp" method="post">
                    <div class="form-group">
                        <label for="delete-to-do">Delete To-Do</label>
                        <select class="form-control" id="delete-to-do" name="delete-to-do" required>
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/asignacion2", "root", "algofacil");
                                    String query = "SELECT * from tasks;";
                                    st = con.createStatement();
                                    rs = st.executeQuery(query);

                                    while (rs.next()) {
                            %>
                            <option value="<%= rs.getString("task_name")%>"><%= rs.getString("task_name")%></option>
                            <%
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                } finally {
                                    if (rs != null) {
                                        rs.close();
                                    }
                                    if (st != null) {
                                        st.close();
                                    }
                                    if (con != null) {
                                        con.close();
                                    }
                                }
                            %>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-danger">Delete to-do</button>
                </form>
        </div>
    </div>
</body>
</html>