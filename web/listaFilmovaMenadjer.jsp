<%-- 
    Document   : listaFilmovaMenadjer
    Created on : 16-May-2021, 23:23:34
    Author     : paulo
--%>

<%@page import="beans.Film"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
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
        </head>
    
      
    <body>
     
     <%
     
     ArrayList<Film> film =(ArrayList<Film>)request.getAttribute("listaF");
     
     %>
         
         
      
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
                                          <th scope="col">FilmID</th>
                                          <th scope="co1">datum</th>
                                          <th scope="col">Naslov</th>
                                          <th scope="col">Sadrzaj</th>
                                          <th scope="col">Trajanje</th>
                                          <th scope="col">Ime Kategorija</th>
                                        
                                        </tr>
                                      </thead>
                                      <tbody>
                                            <% for(Film pom: film){%>
                                                        <tr>

                                                            <td><%=pom.getFilmID()%></td>
                                                                <td><%=pom.getDatum()%></td>
                                                               <td><%=pom.getNaslov()%></td>
                                                               <td><%=pom.getSadrzaj()%></td>
                                                               <td><%=pom.getTrajanje()%></td>
                                                               <td><%=pom.geImeKategorija()%></td>
                                                               
                                            </tr>
                                           <%}%> 
                                            
                                      </tbody>
                                       
                                    </table>
                             
            
            
        </div>

        
       </body> 
    </body>
</html>
