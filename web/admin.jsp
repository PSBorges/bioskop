<%-- 
    Document   : admin
    Created on : 09-Jan-2021, 05:27:06
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Korisnik" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        
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
            .card
            {
               
                margin: 50px auto;
                
                
            }
            
           
            
            .container
            {
                margin-top: 8%;
                
            }
            
            .inner
            {
               
                
                
            }
            
            .inner img
            {
                transition: all 1.5s ease;
                
            }
            
            .inner:hover img
            {
                
                transform: scale(1.5);
            }
               .card:hover
            {
                transform: scale(1.5);
                
            }
            
               
            
        </style>
    </head>
    <body>
        
        <h2 align="center">
        
        <% 
           String msg=(String)request.getAttribute("mensa");
           if(msg!=null){
        %>
        
                   Admin <%=msg%>
        
        <%}%>
        </h2>
        
        
            Dobro dosli: ${korisnik.ime} ${korisnik.prezime}
            Vas JMBG je: ${korisnik.JMBG} i ID: ${korisnik.korisnikID}
            
            
           
            
            <ul align="center" >
                <li><a href="admin.jsp">Home</a></li>
            <li><a href="registracijaKorisnika.jsp">Registracija Korisnika</a></li>
            <li><a href="ListaKorisnika1">Korisnici</a></li>
            <li><a href="ListaProizvoda">Proizvodi</a></li>
           
            <li><a href="ListaFilmova">Filmovi</a></li>
            <li><a href="ListaReklamacija">Reklamacije</a></li>
            <li><a href="ListaRezervacija">Rezervacije</a></li>
            <li> <a href="ListaKupovina">Lista Kupovina</a></li>
            <li><a href="Izlgovanje">Izlogovanje</a></li>
        </ul>
            
            
            
         <div class="container">
              <div class="row  justify-content-center" > 
                  <div class="col-md-4">
                        
                            <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                              <div class="card-header">Registrovanje</div>
                              <div class="card-body">
                                <h5 class="card-title">Registrovanje korisnika</h5>
                                <p class="card-text">Mora da se registuje 3 Menađera i 2 Admnistratora</p>
                                 <a href="registracijaKorisnika.jsp" class="btn btn-success">Registruje</a>
                              </div>
                           
                            </div>
                       
                    </div>
                  <div class="col-md-4">
                       
                           <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                                <div class="card-header">Dodavanje</div>
                                <div class="card-body">
                                  <h5 class="card-title">Filmovi da se dodaju</h5>
                                  <p class="card-text">Emoji Movie</br>Yes Day</br>UP</br>Big Hero 6</p>
                                  
                                   <a href="dodajFilm.jsp" class="btn btn-success">Dodaj</a>
                                </div>
                              </div>
                          
                  </div>
                  <div class="col-md-4">
                              <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                               <div class="card-header">Važno</div>
                               <div class="card-body">
                                 <h5 class="card-title">Obaveze</h5>
                                 <p class="card-text">Sastanak sa menađerima</p>
                                  <p class="card-text">Sastanak za nov bioskop</p>
                                  <p class="card-text">Sastanak sa klijentima</p>
                                  <p class="card-text">Sastanak sa programerima</p>
                                  
                               </div>
                             </div>
                  </div>
                    <div class="col-md-4">
                       
                           <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                                <div class="card-header">Dodavanje Proizvoda</div>
                                <div class="card-body">
                                  <h5 class="card-title">Proizvodi da se dodaju</h5>
                                  <p class="card-text">Trenutno nema</p>
                                   <a href="dodavanjeProizvoda.jsp" class="btn btn-primary">Dodaj</a>
                                </div>
                              </div>
                          
                  </div>
                    <div class="col-md-4">
                      
                           <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                                    <div class="card-header">Brisanje Filmova</div>
                                    <div class="card-body">
                                      <h5 class="card-title">Filmovi da se brišu</h5>
                                      <p class="card-text">Trenutno nema</p>
                                       <a href="ListaFilmova" class="btn btn-danger">Briši</a>
                                    </div>
                                  </div>
                          
                  </div>
                      <div class="col-md-4">
                       
                            <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
                              <div class="card-header">Urađeno</div>
                              <div class="card-body">
                               <p class="card-text">Dodao sam novih korisnika</p>
                                <p class="card-text">Sastanak sa drugim Admnistratorima</p>
                              </div>
                            </div>
                          </div>
                  </div>
 
                 </div>
             
    </body>
</html>
