/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Korisnik;
import beans.Film;
import beans.Kategorija;
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
public class KategorijaFilmova extends HttpServlet {

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
        
       
        //Korisnik korisnik=(Korisnik)sesija.getAttribute("korisnik");
        
       // String ID =korisnik.getKorisnikID();
        
        
        Kategorija kategorija = new Kategorija();
        
        String ID= kategorija.getKategorijaID();
        
        
        
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
           Statement st1= conn.createStatement();
           ResultSet rs=null;
               ResultSet rs1=null;
      
         // Rezervacija rezervacija= new Rezervacija();
          //rezervacija.setKorisnikID(ID);
          
          Film film = new Film();
          //film.setKategorijaID(ID);
          String kt = request.getParameter("ID");
          
              
         ArrayList<Film> listaFK= new ArrayList<Film>();
         
                     
          String upitE = "select * from film where kategorijaID='" +kt+ "'";
         
          
         rs=st.executeQuery(upitE);
          String dbID=rs.getString("kategorijaID");
          
         
            
        // film.setKategorijaID(dbID);
         
         
         if(dbID.equals(2))
         {
             
               //String upitK = "SELECT * FROM film";
          
               //rs1=st1.executeQuery(upitK);
               
          while(rs.next())
           {
           
               listaFK.add(new Film (rs1.getString("filmID"),rs1.getString("naslov"), rs1.getString("datum"),rs1.getString("trajanje"),rs1.getString("sadrzaj"),rs1.getString("kategorijaID"),rs1.getString("imeKategorija"),rs1.getString("slikaA")));
               
           
           }
     
          request.setAttribute("listaFK", listaFK);
          request.getRequestDispatcher("komedija.jsp").forward(request, response);
             
             
         
         }
         else if(dbID.equals(2))
         {
          while(rs.next())
           {
           
               listaFK.add(new Film (rs.getString("filmID"),rs.getString("naslov"), rs.getString("datum"),rs.getString("trajanje"),rs.getString("sadrzaj"),rs.getString("kategorijaID"),rs.getString("imeKategorija"),rs.getString("slikaA")));
               
           
           }
          
          request.setAttribute("listaFK", listaFK);
          request.getRequestDispatcher(".jsp").forward(request, response);
             
             
         
         }
         
      
              
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
