<%-- 
    Document   : listaProizvodaMennadjer
    Created on : 17-May-2021, 01:33:41
    Author     : paulo
--%>

<%@page import="beans.Proizvod"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Proizvoda</title>
        
        
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
                background-color: black;
               background: url(12.png) no-repeat;
                background-size: cover;
                font-family: Arial;
                color: white;
            }
            
            ul{
                margin: 0px;
                padding: 0px;
                list-style: none;
                padding: 20px;
                margin: 0 auto;
                display: table;
                text-decoration:none;
                
              
                
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
                 color: white;
                margin-right: 2px;
                 text-decoration:none;
                
                
            }
            
            ul li a{
                
                text-decoration: none;
                color: white;
                display: block;
                
                
            }
            
            ul li a:hover {
                
                background-color: green;
                 text-decoration:none;
                 color: white;
                
            }
            
        </style>
    </head>
    <body>
        
             <%
     
     ArrayList<Proizvod> proizvod =(ArrayList<Proizvod>)request.getAttribute("listaP");
     
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
                                            <th scope="col">ID</th>
                                            <th scope="col">Ime Proizvoda</th>
                                             <th scope="col">Cena</th>
                                             
                                        
                                        </tr>
                                      </thead>
                                      <tbody>
                                            <% for(Proizvod pom: proizvod){%>
                                                        <tr>
                                                            
                                                            <td><%=pom.getProizvodID()%></td>
                                                            <td><%=pom.getImeProizvoda()%></td>
                                                             <td><%= pom.getCena()%></td>
                                                            
                                                            
                                                          </tr>
                                           <%}%> 
                                            
                                      </tbody>
                                       
                                    </table>
                                           
                                           
                
          
            
        </div>
        
        
        
        
        
        
    </body>
</html>
