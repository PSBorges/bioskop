/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import beans.Korisnik;
import javax.servlet.*;

/**
 *
 * @author paulo
 */
public class Registracija extends HttpServlet {

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
        
      
        String ime=request.getParameter("ime");
        String prezime=request.getParameter("prezime");
        String korisnickoIme=request.getParameter("korisnickoIme");
        String sifra=request.getParameter("sifra");
        String potvrda=request.getParameter("potvrda");
        String email=request.getParameter("email");
        String telefon=request.getParameter("telefon");
        String adresa=request.getParameter("adresa");
        String jmbg=request.getParameter("jmbg");
        String grad=request.getParameter("grad");
        String tip=request.getParameter("klijent");
        
        
        
           String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
            String user ="rooti";
            String pass="admin";
            
            
            try
            {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(dbUrl,user,pass);
            Statement st= conn.createStatement();
            ResultSet rezultat=null;
            
            String upit = "SELECT  korisnickoIme FROM korisnik";
            
            
            rezultat=st.executeQuery(upit);
            
                    
                       while(rezultat.next())
                       {
                       if(korisnickoIme.equals(rezultat.getString("korisnickoIme")))
                       {
                         
                         request.setAttribute("msg", "KorisnickoIme Vec postoji");
                         request.getRequestDispatcher("registracija.jsp").forward(request, response);
                         
                       
                       }
                  
                    }
                       
                       st.close();
                       conn.close();
           
            }
            catch(ClassNotFoundException nfe)
            {
                String poruka = nfe.getMessage();
                request.setAttribute("poruka", poruka);
            
            
            }
            catch(SQLException ex)
            {
              String poruka = ex.getMessage();
              request.setAttribute("poruka", poruka);
            
            }
            
            if(tip!=null &&  ime!=null && ime.length()>0 && prezime!=null && prezime.length()>0 && korisnickoIme!=null && korisnickoIme.length()>0 
               && sifra!=null && sifra.length()>0 && potvrda!=null && potvrda.length()>0 && email!=null && email.length()>0 && telefon!=null && telefon.length()>0
               && grad!=null && grad.length()>0)
            {
                
            if(sifra.equals(potvrda))
            {
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
          
            Connection conn = DriverManager.getConnection(dbUrl,user,pass);
            
            PreparedStatement PS= conn.prepareStatement("INSERT INTO korisnik(ime,prezime,korisnickoIme,sifra,email,telefon,adresa,jmbg,grad,tip) VALUES(?,?,?,?,?,?,?,?,?,?)");
            
            
            PS.setString(1,ime);
            PS.setString(2,prezime);
            PS.setString(3,korisnickoIme);
            PS.setString(4,sifra);
            PS.setString(5,email);
            PS.setString(6,telefon);
            PS.setString(7,adresa);
            PS.setString(8,jmbg);
            PS.setString(9,grad);
            PS.setString(10,tip);
            
            
            int d=PS.executeUpdate();
            
            
            if(d>0)
            {
              request.setAttribute("poruka","Uspesno ste se Reqistrovali. Prijavite se");
              request.getRequestDispatcher("logovanje.jsp").forward(request, response);
            
            }
            
            PS.close();
            conn.close();
               
            }
            catch(ClassNotFoundException nf)
            {
                String poruka = nf.getMessage();
                request.setAttribute("poruka", poruka);
            
            
            }
           catch(SQLException ex)
         {
             String poruka =ex.getMessage();
              request.setAttribute("poruka", poruka);
              request.getRequestDispatcher("error.jsp").forward(request, response);
         }
            }
        
            else
            {
              request.setAttribute("msg", "Lozinka se ne poklapaju");
              request.getRequestDispatcher("registracija.jsp").forward(request, response);
            
            }
    }
    else
    {
               request.setAttribute("msg","Morate Popunite sva polja");
               request.getRequestDispatcher("registracija.jsp").forward(request, response);
       
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
