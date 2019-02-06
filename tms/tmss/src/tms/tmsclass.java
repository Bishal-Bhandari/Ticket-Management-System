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
    public static void ticketform(int side,int n){
      
        frmticket ft=new frmticket();
        ft.setVisible(true);
        
    }
    
}
