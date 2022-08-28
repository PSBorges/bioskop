<%-- 
    Document   : registracija
    Created on : 08-Jan-2021, 09:19:19
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registracija</title>
        
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
        

</style> 

    </head>
    
    <body>
        <h2 align="center">
            
            
            <% 
               String msg=(String)request.getAttribute("msg");
               if(msg!=null)
               {%>
                 <%=msg%><% 
               }
            %>
            
            
        </h2>
        
        <div class="login-box">
    <form action="Registracija" method="post">
        
                    <table align="center"> 
                        
                       
  <h1>Registracija</h1>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="ime" placeholder="Ime">
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="prezime"  placeholder="Prezime">
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="korisnickoIme"  placeholder="Korisnicko Ime">
  </div>
  
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" name="sifra" placeholder="Sifra">
  </div>
   <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" name="potvrda" placeholder="Potvrdite sifru">
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="jmbg" placeholder="JMBG">
  </div>
    <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="email" placeholder="Email">
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="telefon" placeholder="Broj telefona">
  </div>
   
   <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="adresa" placeholder="Adresa">
  </div>
   <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="text" name="grad" placeholder="Grad">
  </div>
  <div>
    <i class="fas fa-lock"></i>
    <input type="checkbox" name="klijent" value="Klijent">
    <label>Klijent</label>
  </div>


  <input type="submit" class="btn" value="Potvrdi"> <input type="reset" class="btn" value="Ponistite"  >
             
                        
                    </table>
                   
                    
  </form>
                
            </div>
        
    </body>
       
  
</html>
