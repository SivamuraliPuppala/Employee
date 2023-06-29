/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

// edited in db connection directly in develop branch and commmited
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Siva
 * This class is to create DB Connection
 */

// to create conflict
public class Dbconnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","");  
        } catch (ClassNotFoundException | SQLException ex) {
        }
        return con;
    }
}
