/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

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
import beans.Film;
import beans.Korisnik;
import beans.Rezervacija;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author paulo
 */
public class Reservisi extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
      response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        
        
        
        HttpSession sesija = request.getSession();
        
       
        Korisnik korisnik=(Korisnik)sesija.getAttribute("korisnik");
        Film film = new Film();
        
         String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
        
        
        
        Rezervacija rezervacija= new Rezervacija();
        
        
        String korisnikID = request.getParameter("korisnikID");
        String ime = request.getParameter("ime");
        String prezime = request.getParameter("korisnikPrezime");
        String filmID=request.getParameter("filmID");
        String bioskopID= request.getParameter("bioskopID");
        String naslov =request.getParameter("naslov");
        String datum=request.getParameter("datum");
        String brRez=request.getParameter("brRez");
        String nazivBioskopa=request.getParameter("nazivBioskopa");
        String salaID=request.getParameter("salaID");
        String sala=request.getParameter("sala");
        
        
   
        
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection(dbUrl,user,pass);
           PreparedStatement PS=null;
           PreparedStatement PS2=null;
           Statement st= conn.createStatement();
           ResultSet rs=null;
            
            
            
            
                
    PS = conn.prepareStatement("INSERT INTO rezervacija(korisnikID,korisnikIme,korisnikPrezime,datum,naslovFilma, brRezervacija,filmID,nazivBioskopa,bioskopID,sala,salaID) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
        
        
        PS.setString(1,korisnikID);
        PS.setString(2,ime);
        PS.setString(3,prezime);
        PS.setString(4,datum);
        PS.setString(5,naslov);
        PS.setString(6,brRez);
        PS.setString(7,filmID);
        
             if(bioskopID.equals("1"))
       {
                   nazivBioskopa="Cineplexx Delta City";
                   PS.setString(8,nazivBioskopa);
       }
          else if(bioskopID.equals("2"))
          {
                    nazivBioskopa="Akademija 28";
                   PS.setString(8,nazivBioskopa);
          }
          else if(bioskopID.equals("3"))
          {
                    nazivBioskopa="Fontana";
                  PS.setString(8,nazivBioskopa);
          }
          else
          {
                  nazivBioskopa="Cineplexx usce Shopping Center";
                  PS.setString(8,nazivBioskopa);
          }
             
              PS.setString(9,bioskopID);
              
              //--
              
              
                 if(salaID.equals("1"))
       {
                 sala="A";
                   PS.setString(10,sala);
       }
          else if(salaID.equals("2"))
          {
                   sala="B";
                    PS.setString(10,sala);
          }
          else if(salaID.equals("3"))
          {
                    sala="C";
                   PS.setString(10,sala);
          }
          else
          {
                  sala="D";
                  PS.setString(10,sala);
          }
                 
                 PS.setString(11, salaID);
              
         
        
        rezervacija.setBioskopID(bioskopID);
        rezervacija.setKorisnikID(korisnikID);
        rezervacija.setKorisnikIme(ime);
        rezervacija.setKorisnikPrezime(prezime);
        rezervacija.setDatum(datum);
        rezervacija.setNaslovFilm(naslov);
        rezervacija.setBrRezervacija(brRez);
        rezervacija.setNazivBioskopa(nazivBioskopa);
        rezervacija.setSalaID(salaID);
     
       int d = PS.executeUpdate();
        
     
        
             
                     ArrayList<Rezervacija> lista= new ArrayList<Rezervacija>();
                     
          String upitK = " SELECT * FROM rezervacija WHERE korisnikID= '" +rezervacija.getKorisnikID()+"' ";
          
          
         rs=st.executeQuery(upitK);
          
          
          while(rs.next())
          {
          
              lista.add(new Rezervacija(rs.getString("rezervacijaID"),rs.getString("bioskopID"),rs.getString("korisnikID"),
               rs.getString("korisnikIme"),rs.getString("korisnikPrezime"),rs.getString("datum"),rs.getString("nazivBioskopa"),
               rs.getString("brRezervacija"),rs.getString("filmID"),rs.getString("naslovFilma"), rs.getString("salaID"),rs.getString("sala"),rs.getString("slikeR")));
         }
          
          
         
          //request.setAttribute("mensa","Uspesno Ste Rezevidali Film");
          request.setAttribute("lista", lista);
          request.getRequestDispatcher("mojeRezervacje.jsp").forward(request, response);
              
              
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Reservisi.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Reservisi.class.getName()).log(Level.SEVERE, null, ex);
        }
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
