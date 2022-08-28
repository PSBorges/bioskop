/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.Korisnik;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
/**
 *
 * @author paulo
 */
public class Logovanje extends HttpServlet {

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
        
       
        
        String korisnickoIme=request.getParameter("ime");
        String sifra=request.getParameter("lozinka");
       // String id = request.getParameter("korisnikID");
        
        String poruka="";
        
        //HttpSession sesija=request.getSession();
        
        
        
        Korisnik korisnik = new Korisnik();
        
        korisnik.setKorisnickoIme(korisnickoIme);
        korisnik.setSifra(sifra);
       // korisnik.getKorisnikID();
       
        
HttpSession sesija=request.getSession();
sesija.setAttribute("korisnik", korisnik);

        
                        String dbUrl="jdbc:mysql://localhost:3306/webbioskop";
                        String user ="rooti";
                        String pass="admin";
        
        if(korisnickoIme==null || sifra==null)
        {
        
             poruka="Morate uneti oba polja";
             request.setAttribute("poruka",poruka);
             request.getRequestDispatcher("logovanje.jsp").forward(request, response);
        
        }
        
        else
        {
        
         java.sql.Connection conn =null;
         java.sql.Statement stmet =null;
         ResultSet rs=null;
        
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(dbUrl,user,pass);
            stmet=conn.createStatement();
            
            
            String query="select * from korisnik where korisnickoIme='"+korisnickoIme+"' and sifra='"+sifra+"'";
            rs=stmet.executeQuery(query);
            
            if(rs.next())
            {
               
              String korisnikID=rs.getString("korisnikID");
              String ime=rs.getString("ime");
              String prezime = rs.getString("prezime");
              String email =rs.getString("email");
              String telefon =rs.getString("telefon");
              String adresa =rs.getString("adresa");
              String JMBG =rs.getString("JMBG");
              String grad=rs.getString("grad");
              String dbtip= rs.getString("tip");
              String dbkorisnickoIme=rs.getString("korisnickoIme");
              String dbsifra=rs.getString("sifra");
            
              
              
              
             korisnik.setIme(ime);
             korisnik.setPrezime(prezime);
             korisnik.setEmail(email);
             korisnik.setTelefon(telefon);
             korisnik.setAdresa(adresa);
             korisnik.setJMBG(JMBG);
             korisnik.setGrad(grad);
             korisnik.setTip(dbtip);
             korisnik.setKorisnikID(korisnikID);
             
          
             
             
             if(korisnickoIme.equals(dbkorisnickoIme) && sifra.equals(dbsifra))
             {
                 if(dbtip.equals("Admin"))
                {
                   
                    sesija.setAttribute("Admin", korisnik);
                
                   request.setAttribute("mensa", ime);
                    request.getRequestDispatcher("admin.jsp").forward(request, response);
             
                }
                 else if(dbtip.equals("Klijent"))
             {
                 
                  sesija.setAttribute("Klijent",korisnik );
               
                  request.setAttribute("mensa", ime);
                 request.getRequestDispatcher("klijent.jsp").forward(request, response);
             
             }
             else if(dbtip.equals("Menadzer"))
             {  
               
               sesija.setAttribute("Menadzer", korisnik);
              
              request.setAttribute("mensa", ime);
                
                request.getRequestDispatcher("menadzer.jsp").forward(request, response);
             
             }
             else 
                    {
                 poruka="Nemate tip korisnka";
                request.setAttribute("poruka",poruka);
                 stmet.close();
                 conn.close();
                request.getRequestDispatcher("logovanje.jsp").forward(request, response);
                         
                     }
             
             }
             
        
             
              
           
            stmet.close();
            conn.close();
            
            }
            else
            {
                poruka="Neispravano korisnicko ime ili lozinka. Pokusaj ponovo.";
                request.setAttribute("poruka",poruka);
                 stmet.close();
                 conn.close();
                request.getRequestDispatcher("logovanje.jsp").forward(request, response);
            
            }
            
            /*request.setAttribute("poruka", "Vasi Podaci");
            request.getRequestDispatcher("klijent.jsp").forward(request, response);*/
                
            }
            catch(ClassNotFoundException cnfe)
              {
              String gresk=cnfe.getMessage();
                      request.setAttribute("greska", gresk);
               request.getRequestDispatcher("error.jsp").forward(request, response);}
            catch(SQLException ex)
            {
               sesija.invalidate();
               String greska=ex.getMessage();
               
               
               if(conn!=null)
                try
                {
                
                  conn.close();
                
                }
               catch(Exception e)
               {
                     greska=e.getMessage();
                      request.setAttribute("greska", greska);
               request.getRequestDispatcher("error.jsp").forward(request, response);
               }
               
               request.setAttribute("greska", greska);
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
