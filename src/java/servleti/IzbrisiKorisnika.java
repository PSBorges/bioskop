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

/**
 *
 * @author paulo
 */
public class IzbrisiKorisnika extends HttpServlet {

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
              HttpSession sesija = request.getSession();
            
           String brisanjeK = request.getParameter("ID");
            
            ResultSet rs = null;
            
           String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
         Connection conn;               
                        
             
             String izbrisiK4= "delete from reklamacija where korisnikID='"+brisanjeK+ "'";      
                   Statement IZBRISIKORISNIK4stmt;
          
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                 conn = DriverManager.getConnection(dbUrl, user, pass);
                
                 IZBRISIKORISNIK4stmt=conn.createStatement();
               
                
                IZBRISIKORISNIK4stmt.executeUpdate(izbrisiK4);
                
                conn.close();
                
            
            }
            
            catch (ClassNotFoundException cnfe) {
                String poruka = cnfe.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            catch (SQLException sqle) {
                String poruka = sqle.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            
                     String izbrisiK3= "delete from kupovina where korisnikID='"+brisanjeK+ "'";      
                   Statement IZBRISIKORISNIK3stmt;
          
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                 conn = DriverManager.getConnection(dbUrl, user, pass);
                
                 IZBRISIKORISNIK3stmt=conn.createStatement();
               
                
                IZBRISIKORISNIK3stmt.executeUpdate(izbrisiK3);
               
                conn.close();
           
            }
            
            catch (ClassNotFoundException cnfe) {
                String poruka = cnfe.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            catch (SQLException sqle) {
                String poruka = sqle.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            
            
              String izbrisiK2= "delete from rezervacija where korisnikID='"+brisanjeK+ "'";      
                   Statement IZBRISIKORISNIK2stmt;
          
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                 conn = DriverManager.getConnection(dbUrl, user, pass);
                
                 IZBRISIKORISNIK2stmt=conn.createStatement();
               
                
                IZBRISIKORISNIK2stmt.executeUpdate(izbrisiK2);
               
                conn.close();
                
                request.setAttribute("mens", "Uspesno ste obrisali korisnika");
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            }
            
            catch (ClassNotFoundException cnfe) {
                String poruka = cnfe.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            catch (SQLException sqle) {
                String poruka = sqle.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
                  String izbrisiK1= "delete from korisnik where korisnikID='"+brisanjeK+ "'";      
                   Statement IZBRISIKORISNIKstmt;
          
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                 conn = DriverManager.getConnection(dbUrl, user, pass);
                
                 IZBRISIKORISNIKstmt=conn.createStatement();
               
                
                IZBRISIKORISNIKstmt.executeUpdate(izbrisiK1);
                
                conn.close();
                
               
            }
            
            catch (ClassNotFoundException cnfe) {
                String poruka = cnfe.getMessage();
                request.setAttribute("poruka", poruka);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            catch (SQLException sqle) {
                String poruka = sqle.getMessage();
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
