package modelo;

public class Admin {
    private int userId;
    private String email;
    private String password;

    public Admin(int userId, String email, String password) {
        this.userId = userId;
        this.email = email;
        this.password = password;
    }

    Admin() {
        
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
