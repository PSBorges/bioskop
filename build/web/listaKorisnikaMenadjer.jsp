<%-- 
    Document   : listaKorisnikaMenadjer
    Created on : 16-May-2021, 23:14:35
    Author     : paulo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Korisnik"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Korisnika</title>
        
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
                padding: 20px;
                list-style: none;
                padding: 20px;
                margin: 0 auto;
                display: table;
                
                
              
                
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
            
</style>
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
                padding: 20px;
                list-style: none;
                padding: 20px;
                margin: 0 auto;
                display: table;
                
                
              
                
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
            
</style>

    </head>
     <body>
        
         <% ArrayList<Korisnik> lista= (ArrayList<Korisnik>)request.getAttribute("listaK"); %> 
    
                 <ul align="center" >
                <li><a href="menadzer.jsp">Home</a></li>
            
            <li><a href="LiataKorisnikaMenadjer">Korisnici</a></li>
            <li><a href="ListaProizvodaMenadjer">Proizvodi</a></li>
           <li><a href="ListaFilmovaMenadjer">Filmovi</a></li>
            <li><a href="ListaRezervacijaMenadjer">Rezervacije</a></li>
            <li> <a href="ListaKupovinaMenadjer">Lista Kupovina</a></li>
            <li><a href="Izlgovanje">Izlogovanje</a></li>
        </ul>
        
        
       <div class="container">
            
                            <h5 align="center">Lista korisnika</h5>
                            <table class="table table-striped table-dark table-hover table-bordered align-center">
                                      <thead>
                                        <tr>
                                          <th scope="col">KorisnikID</th>
                                          <th scope="col">Ime</th>
                                          <th scope="col">Prezime</th>
                                          <th scope="col">KorisnickoIme</th>
                                          <th scope="col">Sifra</th>
                                          <th scope="col">Email</th>
                                          <th scope="col">Telefon</th>
                                          <th scope="col">Adresa</th>
                                          <th scope="col">JMBG</th>
                                          <th scope="col">Grad</th>
                                          <th scope="col">Tip</th>
                                         
                                        </tr>
                                      </thead>
                                      <tbody>
                                            <% for(Korisnik pom: lista){%>
                                                        <tr>

                                                            <td><%=pom.getKorisnikID()%></td>
                                                            <td><%=pom.getIme()%></td>
                                                            <td><%=pom.getPrezime()%></td>
                                                            <td><%=pom.getKorisnickoIme()%></td>
                                                            <td><%=pom.getSifra()%></td>
                                                            <td><%=pom.getEmail()%></td>
                                                            <td><%=pom.getTelefon()%></td>
                                                            <td><%=pom.getAdresa()%></td>
                                                            <td><%=pom.getJMBG()%></td>
                                                            <td><%=pom.getGrad()%></td>
                                                            <td><%=pom.getTip()%></td>
                                                        
                                            </tr>
                                           <%}%> 
                                            
                                      </tbody>
                                       
                                    </table>
                
            
            
        </div>
                                           
               
        
        
        
    </body>
</html>
