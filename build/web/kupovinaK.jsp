<%-- 
    Document   : kupovinaK
    Created on : 14-Jan-2021, 14:57:33
    Author     : paulo
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Proizvod, servleti.ListaProizvoda, beans.Korisnik" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Proizvoda</title>
        
           <h2 align="center">
        
        <% 
           String msg=(String)request.getAttribute("mensa");
           
        %>
        
           
        </h2>
    
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
  color: green;
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
  background: green;
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
            
            .container
            {
                padding: 80px;
                
            }
            
            
               
        

</style> 
    </head>
    <body>
        
         <%!
        Proizvod proizvod;
         
        %>
        
         <% proizvod =(Proizvod)request.getAttribute("proizvodK"); %>  
        
         
     
              
         <ul align="center">
             
             <li><a href="klijent.jsp">Home</a></li>
             <li><a>Reklamacija</a>
                 <ul>
                   <li><a href="reklamaciija.jsp" style="text-decoration:none" >Šaljite Reklmaciju</a></li>
                  <li><a href="Reklamacija style="text-decoration:none">Moja Reklamacija</a></li>
                     
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
            
            <li><a href="">Kategorije</a></li>
            <li><a href="Trajleri.jsp">Trajleri</a></li>
            
            
            <li><a href="Izlgovanje">Odvaje se</a></li>
            
        </ul>
        
     <div class="login-box">
             
             
    <form action="Kupi" method="post">
        
     <table align="center"> 
                        
                       
  <h1>Kupi</h1>
   <div class="textbox">
       <label>Proizvod</label>
    <i class="fas fa-user"></i>
    <input type="text" name="imeProizvoda" placeholder="Ime Proizvoda"  readonly="true" value="<%=proizvod.getImeProizvoda()%>" >
  </div>
 
  
  <div class="textbox">
      <label>Ime</label>
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikIme"   readonly="true" placeholder="Ime Korisnika" value="${korisnik.ime}">
  </div>
  
    <div class="textbox">
        <label>Prezime</label>
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikPrezime"   readonly="true" placeholder="Prezime Korisnika"  value="${korisnik.prezime}">
  </div>
  
  <div class="textbox">
      <label>Korisnik ID</label>
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikID"   readonly="true" placeholder="Prezime Korisnika"  value="${korisnik.korisnikID}">
  </div>
  
                 <tr>
                    
                <td align="center">
                              <input type="submit"  class="btn" value="Kupi">
                              
                          </td>

                       
               </tr>
             
                        
                    </table>
                   
                    
  </form>
           
                        
                         
            </div>
                        
        
    </body>
</html>
