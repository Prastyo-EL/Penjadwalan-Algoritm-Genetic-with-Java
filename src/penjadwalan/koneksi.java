/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package penjadwalan;

/**
 *
 * @author ehazard
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class koneksi {
    public Connection bukaKoneksi() throws SQLException  {
        Connection con = null;
        //Statement stm = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
            //stm=con.createStatement();
            return con;
        }
        catch (SQLException se) {
            System.out.println("No Connection Open" + se);
            return null;
        }
        catch (Exception ex) {
           System.out.println("Cound not open connection" + ex);
           return null;
        }
    }
}
