<%-- 
    Document   : proizvodiIndex
    Created on : 14-May-2021, 11:07:14
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proizvodi Index</title>
        
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
               background: url(4.jpg) no-repeat;
                background-size: cover;
                font-family: Arial;
               
            }
            
            .container .row .card
            {
                 left: -6%;
                width: 100px;
                height: 100px;
                width: 100%;
                height: 100%;
               
                
            }
            
            .card 
            {
               
                left: -6%;
                width: 100px;
                height: 100px;
                width: 100%;
                height: 100%;
               
                
                
                
            }
            
            .card body
            {
                  background-color: green;
                
            }
            
            .container
            {
                margin-top: 100px;
                margin-bottom: 100px;
                
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
            
            
            ul{
                margin-top: 80px auto;
                padding: 80px;
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
            
            
            .row
            {
                margin: 80px auto;
              
              
               
            }
            
               
        </style>
    </head>
   <body>
       
       
       
       
        <ul align="center" >
                
              <li><a href="index.jsp">Filmovi</a></li>
               <li><a href="proizvodiIndex.jsp">Proizvodi</a></li>
               <li><a href="registracija.jsp">Registrovanje</a></li>
               <li><a href="logovanje.jsp">Logovanje</a></li>
            
        </ul>
       
       
       
       
       
       
       
       
   
        <div class="container">
            <div class="row  justify-content-center" > 
                  <div class="col-md-4" class="coluna">
                        <div class="card shadow" style="width: 20rem;">
                            <div class="inner">
                                
                                <img class="card-img-top" src="i/13.jpg" alt="Card image cap">
                            </div>
                            
                            
                            <div class="card-body" >
                                <h5 class="card-title">Šips</h5>
                              <p class="card-text"><b>Cena:</b>70 RSD</p>
                              
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                               <img class="card-img-top" src="i/14.jpg" alt="Card image cap"> 
                                
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Pomfrit</h5>
                              <p class="card-text"><b>Cena:</b>100 RSD.</p>
                              
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/15.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Čokolada</h5>
                              <p class="card-text"><b>Cena:</b>150 RSD.</p>
                              
                            </div>
                          </div>
                  </div>
                 </div>
                
                
                <div class="row  justify-content-center" > 
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                <img class="card-img-top" src="i/16.jpg" alt="Card image cap">
                                
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Coca-cola</h5>
                              <p class="card-text"><b>Cena:</b>100 RSD.</p>
                             
                            </div>
                          </div>
                  </div>
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/17.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Sprite</h5>
                              <p class="card-text"><b>Cena:</b>100 RSD</p>
                            </div>
                          </div>
                  </div>
                      <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/18.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Kafa</h5>
                              <p class="card-text"><b>Cena:</b>120 RSD</p>
                              
                            </div>
                          </div>
                  </div>
 
                 </div>

            
            <div class="row justify-content-center"> 
                  <div class="col-md-4">
                        <div class="card shadow" style="width: 20rem;">
                            <div class="inner">
                                
                                <img class="card-img-top" src="i/19.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Doritos</h5>
                              <p class="card-text"><b>Cena:</b>100 RSD</p>
                              
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/20.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Pljeskavica</h5>
                              <p class="card-text"><b>Cena:</b>300 RSD</p>
                              
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/21.jpg" alt="Card image cap">
                            </div>
                           
                            <div class="card-body">
                              <h5 class="card-title">Kokice</h5>
                              <p class="card-text"><b>Cena:</b>180 RSD</p>
                              
                            </div>
                          </div>
                  </div>
                
                 </div>
            
            <div class="row justify-content-center"> 
            
            
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/22.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h5 class="card-title">Voda</h5>
                              <p class="card-text"><b>Cena:</b>120 RSD</p>
                             
                            </div>
                          </div>
                  </div>
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/23.jpg" alt="Card image cap">
                            </div>
                           
                            <div class="card-body">
                              <h5 class="card-title">Sok</h5>
                              <p class="card-text"><b>Cena:</b>100 RSD</p>
                              
                            </div>
                          </div>
                  </div>
                      <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/24.jpg" alt="Card image cap">
                            </div>
                           
                            <div class="card-body">
                              <h5 class="card-title">Čaj</h5>
                              <p class="card-text"><b>Cena:</b>100 RSD</p>
                              
                            </div>
                          </div>
                  </div>
               
            
            
            
                 </div>
        
         </div>

        
    </body>
</html>
