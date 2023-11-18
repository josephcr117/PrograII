package Modelo;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Personas {

    private String cedula;
    private String nombre;
    private String apellidos;
    ResultSet rs;

    Connection con;
    Statement st;

    public Personas() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pruebaServlet", "root", "algofacil");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Personas.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean insertar() {
        int saber = 0;
        try {
            String script = "insert into persona values('" + cedula + "','" + nombre + "','" + apellidos + "'";

            st = con.createStatement();
            saber = st.executeUpdate(script);

            if (saber == 1) {
                return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(Personas.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;

    }

    public ArrayList<Personas> consultas() {
        ArrayList<Personas> p = new ArrayList<>();
        try {

            String script = "SELECT * FROM persona";
            st = con.createStatement();
            rs = st.executeQuery(script);

            while (rs.next()) {
                p.add(new Personas(rs.getString("cedula")));
//p.add(new Personas(rs.getString("cedula"),rs.getString("nombre"),rs.getString("apellidos")));
            }

        } catch (SQLException ex) {
            Logger.getLogger(Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

}
