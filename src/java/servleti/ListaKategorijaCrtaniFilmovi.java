/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Film;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author paulo
 */
public class ListaKategorijaCrtaniFilmovi extends HttpServlet {

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
           response.setContentType("text/html;charset=UTF-8");
             
      

        
        Connection conn=null;
        Statement stmt=null;
        ResultSet rs=null;
        
         String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
         String user ="rooti";
         String pass="admin";
        
        Film f = new Film();
        
         ArrayList<Film> listaF = new ArrayList<Film>();
         
         try
         {
         Class.forName("com.mysql.jdbc.Driver");
         conn=DriverManager.getConnection(dbUrl,user,pass);
         stmt=conn.createStatement();
         
         
           
           String upit ="select * from film where imeKategorija='Crtani Filmovi'";
           rs=stmt.executeQuery(upit);
           
   
               
             while(rs.next())
           {
           
               listaF.add(new Film(rs.getString("filmID"),rs.getString("naslov"), rs.getString("datum"),rs.getString("trajanje"),rs.getString("sadrzaj"),rs.getString("kategorijaID"),rs.getString("imeKategorija"),rs.getString("slikaA")));
               
           
           }
           request.setAttribute("listaF",listaF);
           request.getRequestDispatcher("crtaniFilmovi.jsp").forward(request, response);
       
           
         }
         catch(ClassNotFoundException cnfe)
         {
             String poruka=cnfe.getMessage();
             request.setAttribute("poruka", poruka);
             request.getRequestDispatcher("error.jsp").forward(request, response);
         }
         catch(SQLException ex)
         {
             
             String poruka=ex.getMessage();
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
