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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.Kategorija;

/**
 *
 * @author paulo
 */
public class Dodajfilm extends HttpServlet {

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
       
        Kategorija kt = new Kategorija();
        
        String naslov= request.getParameter("naslov");
        String datum=request.getParameter("datum");
        String trajanje=request.getParameter("trajanje");
        String sadrzaj=request.getParameter("sadrzaj");
        String imeKategorija=request.getParameter("imeKategorija");
         String kategorijaID=request.getParameter("kategorijaID");
         
         String db=request.getParameter(kt.getKategorijaID());
        
        
         String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
                        
                        
               
                        
        if(naslov!=null && naslov.length()>0 && datum!=null && datum.length()>0 && trajanje!=null && trajanje.length()>0 && sadrzaj!=null && sadrzaj.length()>0 && kategorijaID!=null)
        {
            try
            {
        
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn =DriverManager.getConnection(dbUrl,user,pass);
          
          
          PreparedStatement PS = conn.prepareStatement("INSERT INTO film(sadrzaj,naslov,datum,trajanje,imeKategorija,kategorijaID) VALUES(?,?,?,?,?,?)");
        
        PS.setString(1,sadrzaj);
        PS.setString(2,naslov);
        PS.setString(3,datum);
        PS.setString(4,trajanje);
          if(kategorijaID.equals("1"))
       {
                   imeKategorija="Akcija";
                   PS.setString(5,imeKategorija);
       }
          else if(kategorijaID.equals("2"))
          {
                    imeKategorija="Komedija";
                   PS.setString(5,imeKategorija);
          }
          else if(kategorijaID.equals("5"))
          {
                    imeKategorija="Crtani Filmovi";
                   PS.setString(5,imeKategorija);
          }
          else if(kategorijaID.equals("6"))
          {
                  imeKategorija="Tajler";
                   PS.setString(5,imeKategorija);
          }
          else
          {
                 imeKategorija="Drama";
                   PS.setString(5,imeKategorija);
          
          }

        PS.setString(6,kategorijaID);
        
        
     
       
        
        int d = PS.executeUpdate();
        
        if(d>0)
        {
               request.setAttribute("mensa","Uspesno ste Dodali Film");
                request.getRequestDispatcher("dodajFilm.jsp").forward(request,response);
         
        }
        
          
                     PS.close();
                     conn.close();
          
          }catch(ClassNotFoundException cnfe)
          {
           String poruka = cnfe.getMessage();
            request.setAttribute("poruka", poruka);
            request.getRequestDispatcher("error.jsp").forward(request,response);
          
          }
            catch(SQLException ex )
            {
            String poruka = ex.getMessage();
            request.setAttribute("poruka", poruka);
            request.getRequestDispatcher("error.jsp").forward(request,response);
            }
        
        }
        else
        {
        
            request.setAttribute("mensa","Morate Popunite sva polja");
         request.getRequestDispatcher("dodajFilm.jsp").forward(request, response);
        
        
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
