<%-- 
    Document   : reklamaciija
    Created on : 13-Jan-2021, 08:54:08
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Korisnik"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reklamacija</title>
        
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
}   body{
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
            
            
               
            
  ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: white;
  opacity: 1; /* Firefox */
}
        


.pr{
    color: white;
}

</style> 
    </head>
    <body>
        <h2 align="center" class="pr">
            
            <%
                String msn=(String)request.getAttribute("pt");
                if(msn!=null)
                {
                %> <%=msn%> <%
                    
                 }
                %>
      
        </h2>
        
        
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
        
                
                
                
       <div class="login-box">
             
             
    <form action="Reklamacije" method="post">
        
     <table align="center"> 
                        
                       
  <h1>Reklamacija</h1>
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikID"  readonly="true" placeholder="korisnikID" value="${korisnik.korisnikID}" >
  </div>

  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="ime"  readonly="true" placeholder="Ime" value="${korisnik.ime}">
  </div>
  
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="prezime"  readonly="true" placeholder="Preziime" value="${korisnik.prezime}">
  </div>
  
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="email"  readonly="true" placeholder="Email"  value="${korisnik.email}">
  </div>
  
  

  
  <div class="textarea1">
    <i class="fas fa-lock"></i>
    <textarea name="sadrzaj"  cols="100" rows="5" placeholder="Sadrzaj"></textarea>
  </div>
                 <tr>
                    
               
                     <td>
                         <input type="submit" value="Posalji" class="btn">
                     </td>
                    <td>
                        <input type="reset" value="Unisti" class="btn">
                    </td>
                           
                       
               </tr>
             
                        
                    </table>
                   
                    
  </form>

    </body>
</html>