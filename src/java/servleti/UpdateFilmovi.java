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
import beans.Film;

/**
 *
 * @author paulo
 */
public class UpdateFilmovi extends HttpServlet {

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
       try(PrintWriter out = response.getWriter())
        { 
             response.setContentType("text/html;charset=UTF-8");
        Film film= new Film();
   
          String filmID = request.getParameter("filmID");
         String naslov= request.getParameter("naslov");
        String datum=request.getParameter("datum");
        String trajanje=request.getParameter("trajanje");
        String sadrzaj=request.getParameter("sadrzaj");
        String imeKategorija=request.getParameter("imeKategorija");
        String kategorijaID=request.getParameter("kategorijaID");
        
               if(kategorijaID.equals("1"))
               {
                   film.setImeKategorija("Akcija");
                  
               }
                else if(kategorijaID.equals("2"))
               {
                    film.setImeKategorija("Komedija");
                 
               }
                  else if(kategorijaID.equals("5"))
               {
                   film.setImeKategorija("Crtani Filmovi");
                 
               }
                  else if(kategorijaID.equals("6"))
                  {
                   film.setImeKategorija("Trajler");
                  }
                 else
                  {
                   film.setImeKategorija("Drama");
                  }
        
        
        
        
         String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
                        
                        
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            
             try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(dbUrl, user, pass);
                stmt = conn.createStatement();
                
                
            
        
               
                
                String AzurirajF="update film set naslov='"+naslov+"', datum='"+datum+"', trajanje='"+trajanje+"', sadrzaj='"+sadrzaj+"',imeKategorija='"+film.geImeKategorija()+"', kategorijaID='"+kategorijaID+"' where  filmID='"+filmID+"' ";
                
                 
                
                stmt.executeUpdate(AzurirajF);
                stmt.close();
                conn.close();
                request.setAttribute("mensa", "Uspesno Ste Azurirali Film!");
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            }
            
            catch (ClassNotFoundException e) {
            String poruka = e.getMessage();
            request.setAttribute("poruka", poruka);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        
        catch (SQLException se) {
            String poruka = se.getMessage();
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
