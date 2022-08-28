<%-- 
    Document   : azuriranjeKorisnika
    Created on : 10-Jan-2021, 07:43:45
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Korisnik"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Azuriranje Korisnika</title>
        
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
  width: 80%;
  float: left;
  margin: 0 10px;
}
.btn{
  width: 50%;
  background: none;
  border: 2px solid #4caf50;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
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
        <%!     
         Korisnik korisnik;
         String promeniKo;
         %>
       
       
 
          
       <%Korisnik korisnikP=(Korisnik)request.getAttribute("korisnikP");%> 
        
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
        
        
        
        
         <div class="login-box">
    <form action="PromeniKorisnika" method="post">
        
     <table align="center"> 
                        
                       
  <h1>Azuriranje</h1>
   <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="korisnikID" readonly="true" placeholder="korisnikID" value="<%=korisnikP.getKorisnikID()%>" >
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="ime" placeholder="Ime" value="<%=korisnikP.getIme()%>">
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="prezime"  placeholder="Prezime" value="<%=korisnikP.getPrezime()%>">
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="korisnickoIme"  placeholder="Korisnicko Ime" value="<%=korisnikP.getKorisnickoIme()%>">
  </div>
  
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="jmbg" placeholder="JMBG"  value="<%=korisnikP.getJMBG()%>">
  </div>
    <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="email" placeholder="Email" value="<%=korisnikP.getEmail()%>">
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="telefon" placeholder="Broj telefona" value="<%=korisnikP.getTelefon()%>">
  </div>
   
   <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="adresa" placeholder="Adresa" value="<%=korisnikP.getAdresa()%>">
  </div>
   <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="grad" placeholder="Grad" value="<%=korisnikP.getGrad()%>">
  </div>
  <div>
    <i class="fas fa-lock"></i>
    <input type="checkbox" name="tip" value="Klijent">
    <label>Klijent</label>
  </div>
   <div>
    <i class="fas fa-lock"></i>
    <input type="checkbox" name="tip" value="Menadzer">
    <label>Menadzer</label>
  </div>
   <div>
    <i class="fas fa-lock"></i>
    <input type="checkbox" name="tip" value="Admin">
    <label>Admin</label>
  </div>


  <input type="submit" class="btn" value="Potvrdi"> 
             
                        
                    </table>
                   
                    
  </form>
           
                        
                        
            </div>
        
        
        
        
    </body>
</html>
