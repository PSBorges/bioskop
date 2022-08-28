/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Korisnik;
import beans.Kupovina;
import beans.Proizvod;
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
public class KupovinaTest extends HttpServlet {

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

  
            Connection conn = null;
            Statement stmt = null;
            Statement st = null;
            ResultSet rs = null;
            
                         String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
            
              Proizvod proizvod = new Proizvod();
             
                     
                        
           String imeProizvoda= request.getParameter(proizvod.getImeProizvoda());
            
             ArrayList<Proizvod> listaPP = new ArrayList<Proizvod>();
            

            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(dbUrl, user, pass);
                stmt = conn.createStatement();
                st = conn.createStatement();
                
                
                if(imeProizvoda!=null && imeProizvoda.length()>0)
                {
                
                      String kupi = request.getParameter("IDK");
                     // String upit="select * from Proizod where proizvodID='" +Kupi+ "'";
                     // rs=stmt.executeQuery(upit);
                      
                       PreparedStatement PS = conn.prepareStatement("INSERT INTO kupovina(imeProizvoda) VALUES(?)");
                       
        
        PS.setString(1,imeProizvoda);
         //film.setFilmID(rs.getString("filmID"))
        int d =PS.executeUpdate();
        
        if(d>0)
        {
           request.setAttribute("msg", "Usepesno ste Dodali Proizvod");
           request.getRequestDispatcher("admin.jsp").forward(request, response);
        
        }
        
                      
                      while(rs.next())
           {
           
               listaPP.add(new Proizvod(rs.getString("proizvodID"),rs.getString("imeProizvoda"),rs.getString("cena")));
               
              
               
           
           }
           
           request.setAttribute("listaPP",listaPP);
           //request.getRequestDispatcher("kupovinaKtest.jsp").forward(request, response);
                
                }
                
                
             
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
