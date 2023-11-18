package modelo;

import Connection.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductCRUD {

    private static Connection getConnection() throws SQLException {
        return DBConnector.getConnection();
    }

    public static List<Product> getAllProducts() {
        List<Product> productList = new ArrayList<>();

        try (Connection con = getConnection(); PreparedStatement st = con.prepareStatement("SELECT * FROM products"); ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                int productId = rs.getInt("productId");
                String name = rs.getString("name");
                String description = rs.getString("description");
                double price = rs.getDouble("price");

                Product product = new Product(productId, name, description, price);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

}
