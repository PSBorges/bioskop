<%-- 
    Document   : mojaReklmacija
    Created on : 13-Jan-2021, 13:39:26
    Author     : paulo
--%>

<%@page import="beans.Korisnik"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Reklamacija"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reklamacija</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script
    src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
                 src="https://code.jquery.com/jquery-3.5.1.min.js"
        </script>
        
        <style>
      body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: url(5.jpg) no-repeat;
            background-size: cover;
          }
  
            ul{
                margin: 0px;
                padding: 0px;
                list-style: none;
                 color: white;
                margin: 0 auto;
                display: table;
                top: 0;
                
                
              
                
            }
            
            ul li {
                
                float: left;
                width: 200px;
                height: 40px;
                background:rgba(0,0,0, .8);
                opacity: .8;
                line-height: 40px;
                align-content: center;
                font-size: 20px;
             
                margin-right: 2px;
                
                
            }
            
            ul li a{
                
                text-decoration: none;
                color: white;
                display: block;
                text-decoration:none;
                
                
            }
            
            ul li a:hover {
                
                background-color: green;
                text-decoration:none;
                color: white;
                
            }       
            
              ul li ul li{
                
                display: none;
                
            }
            
            ul li:hover ul li{
                
                display: block;
                
            }
            
            .container
            {
                padding: 80px;
                margin-top: 100px;
                
            }
            
            
               
        

</style> 
    </head>
    <body>
        <h2 align="center">
            
            <%
                String msn=(String)request.getAttribute("pt");
                if(msn!=null)
                {
                %> <%=msn%> <%
                    
                 }
                %>
                
            
            
        </h2>
                
                  <% ArrayList<Reklamacija> lista= (ArrayList<Reklamacija>)request.getAttribute("lista"); %> 
                  <% Korisnik korisnik = new Korisnik(); %> 
    
        
      <ul align="center">
             
             <li><a href="klijent.jsp">Home</a></li>
             <li><a>Reklamacija</a>
                 <ul>
                   <li><a href="reklamaciija.jsp" style="text-decoration:none" >Šaljite Reklmaciju</a></li>
                  <li><a href="Reklamacija" style="text-decoration:none">Moja Reklamacija</a></li>
                     
                 </ul>
             
             </li>
             
              <li><a>Bioskop</a>
                 <ul>
                   <li><a href="MojeRezervacije">Moje Rezervacije</a></li>
                   <li><a href="FilmRezLista">Rezervisi</a></li>
                     
                 </ul>
             
             </li>
             
             <li><a>Kupi</a>
                 <ul>
                    <li><a href="ListaProizvodaKlijent" style="text-decoration:none">Proizvodi</a></li>
                   <li><a href="MojaKupovina">Moja Kupovina</a></li>
                     
                 </ul>
             
             </li>
            
            <li><a href="">Kategorije</a>
            
                  <ul>
                   <li><a href="ListaKategorija" style="text-decoration:none" >Komedija</a></li>
                   <li><a href="ListaKategorijaDrama" style="text-decoration:none" >Drama</a></li>
                  <li><a href="ListaKategorijaAkcija" style="text-decoration:none" >Akcija</a></li>
                  <li><a href="ListaKategorijaCrtaniFilmovi" style="text-decoration:none" >Crtani Filmovi</a></li>
                  
                     
                 </ul>
            
            </li>
            <li><a href="#">Trajleri</a></li>
            
            
            <li><a href="Izlgovanje">Izlogovanje</a></li>
            
        </ul>
               
               
               
               
        
        
       <div class="container">
            
                            <h5 align="center">Lista Reklamacija</h5>
                            <table class="table table-striped table-dark table-hover table-bordered align-center">
                                      <thead>
                                        <tr>
                                          <th scope="col">ID</th>
                                          <th scope="col">KorisnikID</th>
                                          <th scope="col">Ime</th>
                                          <th scope="col">Prezime</th>
                                          <th scope="col">email</th>
                                          <th scope="col">Sadzaj</th>
                                         
                                        </tr>
                                      </thead>
                                      <tbody>
                                            <% for(Reklamacija pom: lista){%>
                                                        <tr>

                                                             <td><%=pom.getID()%></td>
                                                            <td><%=pom.getKorisnikID()%></td>
                                                            <td><%=pom.getIme()%></td>
                                                            <td><%=pom.getPrezime()%></td>
                                                            <td><%=pom.getEmail()%></td>
                                                            <td><%=pom.getSadrzaj()%></td>
                                                           
                                            </tr>
                                           <%}%> 
                                            
                                      </tbody>
                                       
                                    </table>
                
            
            
        </div>
               
           
        
        
        
    </body>
</html>
