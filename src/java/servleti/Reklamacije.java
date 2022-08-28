/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Reklamacija;
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

/**
 *
 * @author paulo
 */
public class Reklamacije extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       //String id = request.getParameter("id");
        String korisnikID= request.getParameter("korisnikID");
        String ime = request.getParameter("ime");
        String sadrzaj = request.getParameter("sadrzaj");
        String email = request.getParameter("email");
        String prezime=request.getParameter("prezime");
        String poruka="";
        
      Reklamacija reklamacija=new Reklamacija();
        
       
         String dbURL="jdbc:mysql://localhost/webbioskop";
        String user="rooti";
        String pass="admin";
        
            
            if(sadrzaj!=null)
            {
                
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(dbURL,user,pass);
               
                
                
               //Reklamacija reklamacija= new Reklamaciija();
             
                          
        
        PreparedStatement PS = conn.prepareStatement("INSERT INTO reklamacija(korisnikID,ime,prezime,sadrzaj,email) VALUES(?,?,?,?,?)");
        
       
        PS.setString(1,korisnikID);
        PS.setString(2,ime);
        PS.setString(3,prezime);
        PS.setString(4,sadrzaj);
        PS.setString(5,email);
        
        //reklamacija.setID(id);
        reklamacija.setKorisnikID(korisnikID);
        reklamacija.setIme(ime);
        reklamacija.setPrezime(prezime);
        reklamacija.setSadrzaj(sadrzaj);
        reklamacija.setEmail(email);       
        
   

        
       int d = PS.executeUpdate();
        
        if(d>0)
        {
                 request.setAttribute("pt","Uspesno ste slali Reklamaciju");
                request.getRequestDispatcher("reklamaciija.jsp").forward(request,response);
         
        }
        
          
                     PS.close();
                     conn.close();

                
                }
                catch(ClassNotFoundException ex)
                {
                    String pk = ex.getMessage();
            request.setAttribute("poruka", pk);
            request.getRequestDispatcher("error.jsp").forward(request,response);
                }
                catch(SQLException f)
                {
                   String p = f.getMessage();
            request.setAttribute("poruka", p);
            request.getRequestDispatcher("error.jsp").forward(request,response);
                }
                
                
                
                
            }
            else
            {
            
           request.setAttribute("pt", "Molimo vas Unesite Reklamaciju");
           request.getRequestDispatcher("reklamaciija.jsp").forward(request, response);
            
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
