/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package tms;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class tmsclass {
     public static Connection cn;
    
    public static String shift; 
    public static String bustype; 
    public static String time;
    public static String side;
    public static String seatno;
    public static void dbconnection(){   
        try{
        Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/tms","root",""); 
            
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null, ex);
        }
    
    }
    
}
