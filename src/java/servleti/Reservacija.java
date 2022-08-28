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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import beans.Rezervacija;

/**
 *
 * @author paulo
 */
public class Reservacija extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {

            
            HttpSession sesija=request.getSession();
          
            Rezervacija rezervacija = new Rezervacija();
            
               String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
         String Rez = request.getParameter("IDRez");
         
         try
         {
             Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(dbUrl, user, pass);
                Statement stmt = conn.createStatement();
                 ResultSet rs = null;
         
      String upitRez= "Select filmID, naslov, datum, slikaA from film where filmID="+Rez;
            
           rs = stmt.executeQuery(upitRez);
         
         if(rs.next()){
         
          
           rezervacija.setFilmID(rs.getString("filmID"));
           rezervacija.setNaslovFilm(rs.getString("naslov"));
           rezervacija.setDatum(rs.getString("datum"));
           rezervacija.setSlikeR(rs.getString("slikaA"));
           
           
           
             request.setAttribute("rezervacija", rezervacija);
             
           request.getRequestDispatcher("reservisiKartu.jsp").forward(request, response);
           
         }
         
           stmt.close();
           conn.close();
            
        }  
            catch(ClassNotFoundException cnfe)
            {
                 String poruka = cnfe.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
         catch(SQLException ex)
         {
               String poruka = ex.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
             
         }
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
