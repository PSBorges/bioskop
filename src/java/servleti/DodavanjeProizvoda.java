/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Korisnik;
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
import beans.Proizvod;
import java.sql.PreparedStatement;

/**
 *
 * @author paulo
 */
public class DodavanjeProizvoda extends HttpServlet {

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
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
        
          String imeProizvoda= request.getParameter("imeProizvoda");
          String cena= request.getParameter("cena");
        
        
        String dbURL="jdbc:mysql://localhost/webbioskop";
        String user="rooti";
        String pass="admin";
        
      
        
        try
        {
        
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection(dbURL,user,pass);
          Statement st = conn.createStatement();
          ResultSet rezultat=null;
          String upit="SELECT imeProizvoda FROM proizvod";
          rezultat= st.executeQuery(upit);
        
          
          while(rezultat.next())
          {
            if(imeProizvoda.equals(rezultat.getString("imeProizvoda")))
            {
            
                 request.setAttribute("msn", "Proizvod već Postoji!");
                 request.getRequestDispatcher("dodavanjeProizvoda.jsp").forward(request,response);
            st.close();
          conn.close();
            }
          
          }
          
          
          
        }
        catch(ClassNotFoundException cnfe)
        {
         String poruka = cnfe.getMessage();
            request.setAttribute("poruka", poruka);
            request.getRequestDispatcher("error.jsp").forward(request,response);
        
        
        }
        catch(SQLException ex)
        {
        
            String poruka = ex.getMessage();
            request.setAttribute("poruka", poruka);
            request.getRequestDispatcher("error.jsp").forward(request,response);
        
        }
        
        
        
        
        if(imeProizvoda!=null && imeProizvoda.length()>0)
        {
        
       
             try
             {
             
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(dbURL,user,pass);
                //Statement st = conn.createStatement();
                
                //Korisnik k = new Korisnik();
             
                          
        
        PreparedStatement PS = conn.prepareStatement("INSERT INTO proizvod(imeProizvoda, cena) VALUES(?,?)");
        
        PS.setString(1,imeProizvoda);
        PS.setString(2,cena);
        
        int d =PS.executeUpdate();
        
        if(d>0)
        {
           request.setAttribute("msn", "Usepesno ste Dodali Proizvod");
           request.getRequestDispatcher("dodavanjeProizvoda.jsp").forward(request, response);
        
        }
    
        
        
        PS.close();
        conn.close();
                
             
             }
             catch(ClassNotFoundException cnfe)
             {
                String poruka = cnfe.getMessage();
            request.setAttribute("msn", poruka);
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
         request.setAttribute("msn","Morate Popunite sva polja");
         request.getRequestDispatcher("dodavanjeProizvoda.jsp").forward(request, response);
         
        
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
