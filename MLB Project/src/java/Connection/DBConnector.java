package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
    private static final String JDBC_URL = "jdbc:mysql://MYSQL6008.site4now.net/db_a1e868_grupo1";
    private static final String USERNAME = "a1e868_grupo1";
    private static final String PASSWORD = "Grupo12023";

    public static Connection getConnection() throws SQLException {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    }
}