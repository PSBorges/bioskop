<%-- 
    Document   : listaProizvoda
    Created on : 12-Jan-2021, 17:32:45
    Author     : paulo
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Proizvod, servleti.ListaProizvoda" %>
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
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: url(6.jpg) no-repeat;
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
            <%
     
     ArrayList<Proizvod> proizvod =(ArrayList<Proizvod>)request.getAttribute("listaP");
     
     %>
         
         
          <ul align="center">
             
               <li><a href="admin.jsp">Home</a></li>
             <li><a href="registracijaKorisnika.jsp" style="text-decoration:none" >Registracija Korisnika</a></li>
            <li><a href="ListaKorisnika1" style="text-decoration:none">Korisnici</a></li>
            <li><a href="ListaProizvoda" style="text-decoration:none">Proizvodi</a></li>
           
            <li><a href="ListaFilmova">Filmovi</a></li>
            <li><a href="ListaReklamacija">Reklamacije</a></li>
            <li><a href="ListaRezervacija">Rezervacije</a></li>
            <li><a href="ListaKupovina">Lista Kupovina</a></li>
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
                                            
                                          
                                          
                                          <th <td>Brisanje</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                            <% for(Proizvod pom: proizvod){%>
                                                        <tr>
                                                            
                                                            <td><%=pom.getProizvodID()%></td>
                                                            <td><%=pom.getImeProizvoda()%></td>
                                                            <td><%= pom.getCena()%></td>
                                                           
                                                             
                                                            
                                                           <td>
                                                               <p align="right"><a href="IzbrisiProizvod?ID=<%=pom.getProizvodID()%>"><input type="button" class="btn btn-danger badge-pill" style="width:80px" value="Brisi"></a> </p>
                                                               
                                                             
                                                            </td>
                                                          </tr>
                                           <%}%> 
                                            
                                      </tbody>
                                       
                                    </table>
                                           
                                           <td class="text-right">
                                                 <p align="lefth"><a href="dodavanjeProizvoda.jsp"><input type="button" class="btn btn-success badge-pill" style="width:150px" value="Dodaj Proizvod"></a></p>
                                           </td>
                
          
            
        </div>
        
        
              
              
        
    </body>
</html>
