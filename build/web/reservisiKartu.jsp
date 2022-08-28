<%-- 
    Document   : reservisiKartu
    Created on : 09-Mar-2021, 17:26:35
    Author     : paulo
--%>
<%@page import="beans.Korisnik"%>
<%@page import="beans.Rezervacija"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rezervisanje Karta</title>
        
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
  background: url(4.jpeg) no-repeat;
  background-size: cover;
}
.login-box{
  width: 280px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  color: white;
}


.box
{
    
    width: 280px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  color: white;  
    
    
}
.login-box h1{
  float: left;
  font-size: 40px;
  border-bottom: 6px solid #4caf50;
  margin-bottom: 50px;
  padding: 13px 0;
}
.textbox{
  width: 100%;
  overflow: hidden;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #4caf50;
}
.textbox i{
  width: 26px;
  float: left;
  text-align: center;
}
.textbox input{
  border: none;
  outline: none;
  background: none;
  color: white;
  font-size: 18px;
  width: 100%;
  float: left;
  margin: 0 10px;
}
.textarea1 textarea{
  border: none;
  outline: none;
  background: green;
  color: white;
  font-size: 18px;
  width: 100%;
  height: 100%;
  float: left;
  margin: 0 10px;
  border-bottom: 1px solid #4caf50;
  padding: 8px 0;
  margin: 8px 0;
}

.btn{
  width: 100%;
  background: none;
  border: 2px solid #4caf50;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}
.btn-1{
  width: 100%;
  background: none;
  border: 2px solid red;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}
        
.date input{
   border: none;
  outline: none;
  background: black;
  color: white;
  font-size: 18px;
  width: 80%;
  height: 100%;
  float: left;
  margin: 0 10px;
}

.date{
  width: 100%;
  overflow: hidden;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #4caf50;
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
                 color: white;
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
            
            
            .textbox select
            {
                 background: none;
                  color: green;
                  width: 100%;
                  
                    border: none;
                    outline: none;
                
            }
            
            .br input
            {
                 background: none;
               
                  width: 100%;
                  
                  border: green;
                outline: none;
               width: 100%;
               overflow: hidden;
               font-size: 25px;
               padding: 8px 0;
               margin: 8px 0;
               border-bottom: 1px solid #4caf50;
               
                    color: green;
                   
                    width: 100%;
                    float: left;
                    margin: 0 10px;
                
            }
            
            
            
       
            
            
           
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
             .card 
            {
               
                left: -6%;
                width:100px;
                height: 50px;
                width: 100%;
                height: 50%;
                 margin: 80px;
                
                 
                   
                   background-color: black;
                
               
                
                
                
                
            }
            
            .card body
            {
                     margin-top: 100px;
                   margin-bottom: 100px;
                  
              
               
            }
            
            .container
            {
               padding-top: 320px;
                align-items: center;
                justify-content: center;
                
            }
            
            .inner
            {
               
                 
                   
                   
                
            }
            
            .inner img
            {
                transition: all 1.5s ease;
                
                
                top:0;
                left: 0;
                width: 300px;
                height: 300px;
                display: block;
                
                
                
            }
            
            .inner:hover img
            {
                
                transform: scale(1.5);
            }
               
        

</style> 
        
    </head>


    <body>
        
        
        <h2 align="center">
            <%
                String msg=(String)request.getAttribute("mensa");
                if(msg!=null)
                {
                      %> <h1>  <%=msg%></h1> <%
                    
                 }
                %>
   
            
        </h2>
    
           <%!     
               
        Rezervacija rezervacija;
        Film film;
        
         %>
       
       
 
       <% rezervacija = (Rezervacija)request.getAttribute("rezervacija");%>
       

        <ul align="center">
             
             <li><a href="klijent.jsp">Home</a></li>
             <li><a>Reklamacija</a>
                 <ul>
                   <li><a href="reklamaciija.jsp" style="text-decoration:none" >Šaljite Reklmaciju</a></li>
                  <li><a href="Reklamacija"  style="text-decoration:none">Moja Reklamacija</a></li>
                     
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
            <li><a href="TrajleriF">Trajleri</a></li>
            
            
            <li><a href="Izlgovanje">Izlogovanje</a></li>
            
        </ul>
       
       
       
       
       
       
       
       
       <div class="container">
            <div class="row  justify-content-center" > 
                  <div class="col-md-4" class="coluna">
                        <div class="card shadow" style="width: 20rem;">
                            <div class="inner">
                                
                                <img class="card-img-top" alt="Card image cap"  <%=rezervacija.getSlikeR()%>  />
                            </div>
                            
                            
                            <div class="card-body" >
                                <h3 class="card-title"></h3>
                                <p class="card-text"></p>
                              <p class="card-text"></b></p>
                              
                             
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                          
                            <div class="card-body">
                              <div class="login-box">
             
             
    <form action="Reservisi" method="post">
        
     <table align="center"> 
                        
                       
  <h1>Rezervisanje</h1>
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikID" readonly="true" value="${korisnik.korisnikID}" placeholder="KorisnikID" >
  </div>
  
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="filmID"  placeholder="FilmID" readonly="true" value="<%=rezervacija.getFilmID()%>" >
  </div>
  
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="ime"  placeholder="Korisnik Ime"  readonly="true" value="${korisnik.ime}">
  </div>
  
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikPrezime"  placeholder="Korisnik Prezime"  readonly="true" value="${korisnik.prezime}">
  </div>
  
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="naslov"  placeholder="Naslov"  readonly="true" value="<%=rezervacija.getNaslovFilm()%>" >
  </div>
  
 
  <div class="date">
    <i class="fas fa-user"></i>
    <input type="date" name="datum"  readonly="true"  placeholder="Datum" value="<%=rezervacija.getDatum()%>">
  </div>
  
  
    <div class="textbox">
    <i class="fas fa-user"></i>
   
    
                        <select name="bioskopID">
                                  <option value="1">Cineplexx Delta City</option>
                                  <option value="2">Akademija 28</option>
                                  <option value="3">Fontana</option>
                                  <option value="4">Cineplexx Usce Shopping Center</option>
                              </select>
                      
  </div>
  
    <div class="textbox">
    <i class="fas fa-user"></i>
    
    
                       <select name="salaID">
                                  <option value="1">A</option>
                                  <option value="2">B</option>
                                  <option value="3">C</option>
                                  <option value="4">D</option>
                              </select>
                   
   
  </div>
  
   <div class="br">
    <i class="fas fa-user"></i>
   <input type="number" name="brRez" size="5" value="1">
  </div>
  
  
 
                 <tr>
                    
               
                          <td>
                              
                               <input type="submit" class="btn" value="Potvrdite" name="DgRezervisi">
                              
                          </td>
                    
                         
       
               </tr>
             
                        
                    </table>
                   
                    
  </form>
           
                        
                         
            </div>
       
                            </div>
                          </div>
                  </div>
              
                 </div>
      
         </div>
       

 
    </body>
</html>
