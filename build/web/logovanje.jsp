<%-- 
    Document   : logovanje
    Created on : 07-Jan-2021, 11:18:21
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logovanje</title>
        
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
  background: url(bg.jpg) no-repeat;
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
  width: 100%;
  background: none;
  border: 2px solid #4caf50;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}

.pr{ color: white; }
        
        </style> 
        
         
    </head>
    <body>
      
        
        
              <h2 align="center" class="pr"> 
                  
                 <%
                String msg=(String)request.getAttribute("poruka");
                if(msg!=null)
                {
                      %> <%=msg%> <%
                    
                 }
                %>
              </h2>

              
             <div class="login-box">
    <form action="Logovanje" method="post">
        
                    <table align="center"> 
                        
                       
  <h1>Logovanje</h1>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="ime" placeholder="Korisnicko Ime">
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" name="lozinka" placeholder="Lozinka">
  </div>

  
                       <tr>       
                          <td>
                              <input type="submit" class="btn" value="Prijavi se"  >
                              
                          </td>
                          <td>
                             <input type="reset" class="btn" value="Ponistite"  >
                              
                          </td>
                    
                     </tr>
  

                        
                      
                        
                    </table>
        <p align="center"><a href="registracija.jsp">Registruje se</a></p>  
                   
                    
  </form>
                
            </div>
        
    </body>
</html>
