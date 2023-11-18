package modelo;

import Connection.DBConnector;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;

public class ClienteCRUD {

    public List<Cliente> getAllClientes() {
        List<Cliente> clientes = new ArrayList<>();
        try (Connection con = DBConnector.getConnection(); PreparedStatement statement = con.prepareStatement("SELECT * FROM users"); ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Cliente cliente = new Cliente();
                cliente.setUserId(resultSet.getInt("userId"));
                cliente.setEmail(resultSet.getString("email"));
                cliente.setPassword(resultSet.getString("password"));
                clientes.add(cliente);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return clientes;
    }

    public void registerCliente(Cliente cliente) {
        try (Connection con = DBConnector.getConnection()) {
            PreparedStatement st = con.prepareStatement("INSERT INTO users (email, password)" + "Values('" + cliente.getEmail() + "','" + cliente.getPassword() + "')");

            st.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean authenticateCliente(String email, String password) {
        try (Connection con = DBConnector.getConnection(); 
                //PreparedStatement st = con.prepareStatement("SELECT * FROM users WHERE email ='" + email + "' AND password ='" + password + "'"); 
                 PreparedStatement st = con.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?")) {

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
}
