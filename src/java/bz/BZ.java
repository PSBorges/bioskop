/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author paulo
 */
public class BZ {
    
    
    public static void main(String[] args) 
    
    {  
        
        
            try
        {
            
            
            String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
            String user="rooti";
            String pass="admin";
        
        
        
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection veza = DriverManager.getConnection(dbUrl, user, pass);
        
         String upit1="INSERT INTO korisnik (ime,prezime,korisnickoIme,sifra,email,telefon,adresa,JMBG,grad) VALUES(?,?,?,?,?,?,?,?,?)";
        
        PreparedStatement PS = veza.prepareStatement(upit1);
        
        
        try
        {
          
            PS.setString(1, new String("4782"));
            PS.setString(2, new String("Hernani"));
            PS.setString(3, new String("korisnickoIme"));
            PS.setString(4, new String("787"));
            PS.setString(5, new String("44443444"));
            PS.setString(6, new String("6789"));
            PS.setString(7, new String("MIM"));
            PS.setString(8, new String("444444"));
            PS.setString(9, new String("MIM"));
            
            PS.executeUpdate();
            
          
            
            System.out.println("Usepesno ste uneli korisnika");
        
        }
        
        catch(SQLException sqle)
        {
           System.out.println("Izuzetak"+sqle);
        
        }
        
        PS.close();
        veza.close();
        
        
        }
        catch(ClassNotFoundException nf)
        {
            System.out.println("not found"+nf);
        }
        catch(SQLException ex)
        {
        
        System.out.println("Izuzetak2"+ex);
        }
        
        
        
    }
    
}
