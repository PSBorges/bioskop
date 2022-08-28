/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Kupovina;
import beans.Korisnik;
import beans.Rezervacija;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author paulo
 */
public class MojaKupovina extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
     
        
        
        HttpSession sesija = request.getSession();
        
       
        Korisnik korisnik=(Korisnik)sesija.getAttribute("korisnik");
        
        String ID =korisnik.getKorisnikID();
        
        
         String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
                        
                           try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection(dbUrl,user,pass);
           PreparedStatement PS=null;
           PreparedStatement PS2=null;
           Statement st= conn.createStatement();
           ResultSet rs=null;
      
          Kupovina kupovina= new Kupovina();
          kupovina.setKorisnikID(ID);
         ArrayList<Kupovina> lista= new ArrayList<Kupovina>();
                     
          String upitK = " SELECT * FROM kupovina WHERE korisnikID= '" +kupovina.getKorisnikID()+"' ";
          
          
         rs=st.executeQuery(upitK);
          
          
          while(rs.next())
          {
          
               lista.add(new Kupovina(rs.getString("kupovinaID"),rs.getString("imeProizvoda"),rs.getString("klijentIme"),rs.getString("klijenPrezime"),rs.getString("proizvodID"),rs.getString("korisnikID") ));
         }
          
          
         
          //request.setAttribute("mensa","Uspesno Ste Rezevidali Film");
          request.setAttribute("lista", lista);
          request.getRequestDispatcher("mojaKupovina.jsp").forward(request, response);
              
              
           PS.close();
          st.close();
          conn.close();
         }
        
            
            
   
        catch(ClassNotFoundException cnfe)
        {
            String greska=cnfe.getMessage();
            request.setAttribute("poruka", greska);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            
        
        }
        catch(SQLException ex)
        {
            String greska=ex.getMessage();
            request.setAttribute("poruka", greska);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            
        
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
