package modelo;

import Connection.DBConnector;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminCRUD {

    public boolean authenticateAdmin(String email, String password) {
        try (Connection con = DBConnector.getConnection(); PreparedStatement st = con.prepareStatement("SELECT * FROM admin WHERE email = ? AND password = ?")) {

            st.setString(1, email);
            st.setString(2, password);

            try (ResultSet rs = st.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Admin> getAllAdmins() {
        List<Admin> admins = new ArrayList<>();
        try (Connection con = DBConnector.getConnection(); Statement st = con.createStatement(); ResultSet rs = st.executeQuery("SELECT * FROM admin")) {

            while (rs.next()) {
                Admin admin = new Admin();
                admin.setUserId(rs.getInt("admin_id"));
                admin.setEmail(rs.getString("email"));
                admin.setPassword(rs.getString("password"));
                admins.add(admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Number of admins retrieved: " + admins.size());
        return admins;
    }

}
