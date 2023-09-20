
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author dimas
 */
public class Connect {

    private static Connection connect;
       
    public static Connection getConnection() throws SQLException{       
        if(connect == null){
            try{
                String db = "jdbc:mysql://localhost:3306/siminwabku";
                String user = "root";
                String pass = "";
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                connect = DriverManager.getConnection(db, user, pass);
            }catch (SQLException e){
                Logger.getLogger(Connect.class.getName()).log(Level.SEVERE,null, e);
            }
        }
        return connect;
    }
}
