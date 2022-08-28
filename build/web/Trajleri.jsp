<%-- 
    Document   : Trajleri
    Created on : 12-Mar-2021, 02:24:20
    Author     : paulo
--%>

<%@page import="beans.Trajleri"%>
<%@page import="beans.Film"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trajleri</title>
        
        <style>

       body{
                background-color: black;
               background: url(1.jpg) no-repeat;
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
            
            
            .parent-div
            {
                
              
               
                padding: 50px;
                 margin: 10px;
                 display: flex;
                 align-items: center;
                 justify-content: center;
                 display: block;
    
                
            }
            
             .for table tr
            {
                
              margin-left: 100px;
               margin: 0 auto; 
               width: 400px; 
              
                
                
            }
            
            
            
         
            .for
            {
                   padding: 100px;
                 margin: 100px;
                
                 align-items: center;
                 justify-content: center;
                 display: block;
                border: 40px;
             
               
            }
            
            .for video
            {
                
                margin: 20px;
            }
            
               
        

</style> 
    </head>
    <body>
        
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
               
               
                <%
     
     ArrayList<Trajleri> video =(ArrayList<Trajleri>)request.getAttribute("listaT");
     
     %>
     
     
     
           
               
                  
                  
           
     
                      <form align="center" class="for">
     
            <table text-align="center"  >
               
              
                     
     
     
       <tr>
            
           
           
       <tr align="center" >
                          <td></td>
                           <td></td>
                            <td></td>
                           <td></td>
           
       </tr>
     <tr>
                
                              <% for(Trajleri pom: video){%>
                              
                             
                                                     
              <video class="center"  controls  preload="none" width="450" height="250" <%=pom.getVideo()%> </video> 
                                         
                                
                        <%}%> 
                          </div>
                  
             
                        </tr>
                        
          </table>
                         
        
                      
      </form>
                         
                    
                    
              
    </body>
</html>
