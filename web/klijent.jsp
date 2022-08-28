<%-- 
    Document   : klijent
    Created on : 09-Jan-2021, 03:58:03
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Korisnik"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Klijent</title>
        
       
        
                 <style>

       body{
                background-color: black;
               background: url(3.jpg) no-repeat;
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
            
            
            
            
           

</style> 
        
    </head>
    <body>
       
        
        
        <table align="center">
            
            <%
                 String msg=(String)request.getAttribute("mensa");
                 if(msg!=null){
                     
                     
                 %><h1 align="center">Klijent: <%=msg%></h1>
                 
                 
            
            <%}%>
              </table>
            
                
                DobroDosli: ${korisnik.ime} ${korisnik.prezime}
               Vas JMBG je:${korisnik.JMBG} i ID:${korisnik.korisnikID}
               
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
               
               
               
               
        
               
         

    </body>
</html>
