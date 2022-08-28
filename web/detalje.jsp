<%-- 
    Document   : detalje
    Created on : 20-May-2021, 12:32:47
    Author     : paulo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" >
        <title>JSP Page</title>
        
        
          <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
         <link   rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
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
               background: url(9.jpg) no-repeat;
                background-size: cover;
                font-family: Arial;
                color: white;
               
              
                
            }

  
            ul{
                margin: 0px;
                padding: 0px;
                list-style: none;
                
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
                
                margin:0px;
                padding: 100px;
            }
            
            
            
           
            .logo
            {
                width: 100px;
                margin-top: 18px;
                
            }
            .header
            {
                height:10%px;
                
                
            }
            .header-btn
            {
                text-decoration: none !important;
                border-radius: 30px;
                padding: 7px 20px;
                float: right;
                margin-top: 15px;
                color: #fff !important;
                background: #4caf50;
                font-weight: 600;

            }
            .movie-details
            {
                
                margin: 3% 20%;
            }
            .left-box
            {
                color: #fff;
                margin: 15px 0;
                padding: 20px;
                
                
            }
            .left-box a
            {
                text-decoration: none !important;
                border-radius: 30px;
                padding: 7px 20px;
             
                margin-top: 15px;
                color: #fff !important;
                background: #4caf50;
                font-weight: 600;
                display: inline-block;
                margin-right: 10px;
                
            }
            .trajler-brn
            {
                border: 1px solid #fff !important;
                background: transparent !important;
            }
            .fa{
                   margin: 0 5px;
               }
            
            .movie-img
            {
                  height: 400px;
                  box-shadow: -4px 4px 5px 0 #000;
                  width: 350px;
                
            }
            .series h3{
    
    color:#fff;
}
.series img
{
    width: 100%;
    margin-top: 15px;
     box-shadow: -4px 4px 5px 0 #000;
     cursor: pointer;
     transition: 1s;
     
    
}

.series img:hover{
    transform: translateY(-20px);
    
    
}

            
            
        </style>
 
    </head>
    <body>
          
       <% Film film =(Film) request.getAttribute("film"); %>  
        
        
       
       
       
       
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
            
            <li><a href="#">Kategorije</a>
            
                  <ul>
                   <li><a href="ListaKategorija" style="text-decoration:none" >Komedija</a></li>
                   <li><a href="ListaKategorijaDrama" style="text-decoration:none" >Drama</a></li>
                  <li><a href="ListaKategorijaAkcija" style="text-decoration:none" >Akcija</a></li>
                  <li><a href="ListaKategorijaCrtaniFilmovi" style="text-decoration:none" >Crtani Filmovi</a></li>
                  
                     
                 </ul>
            
            </li>
            <li><a href="TrajleriF">Trajleri</a></li>
            
            
            <li><a href="Izlgovanje">Izlogovanje</a></li>
            
        </ul>
       
       
       
       
       
       
       
       
       
        
        
        <div class="container movie-details">
            <div class="row">
                <div class="col-md-6 left-box">
                    <h1><b><%= film.getNaslov()%></b></h1>
                    <p><b>Sadrzaj:</b> <%= film.getSadrzaj() %></br></p>
                    <p><b>Trajanje:</b> <%= film.getTrajanje() %></br></p>
                    <p><b>Datum:</b> <%=film.getDatum() %></br></p>
                    <p><b>Kategorija:</b> <%=film.geImeKategorija() %></br></p>
                    
                    
                  
                    <a href="Reservacija?IDRez=<%=film.getFilmID()%>"><i class="fa fa-ticket"></i>Reserviši</a>
                   
                </div>
                <div class="col-md-6 text-center">
                     
                    <img class="movie-img" class="movie-img"   <%= film.getSlikaA()%>   </img> 
                </div>
                
                
            </div>
         </div>
    </body>
</html>
