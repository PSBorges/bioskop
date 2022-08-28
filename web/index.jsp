<%-- 
    Document   : index
    Created on : 13-May-2021, 17:50:42
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
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
            
            .card 
            {
               
                left: -6%;
                width:100px;
                height: 50px;
                width: 100%;
                height: 100%;
                
                
                
            }
            
            .card body
            {
                 
                
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
                                
                                <img class="card-img-top" src="i/1.jpg" alt="Card image cap">
                            </div>
                            
                            
                            <div class="card-body" >
                                <h3 class="card-title">Finding Nemo</h3>
                                <p class="card-text"><b>Trajanje:</b>170min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              
                               <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                               <img class="card-img-top" src="i/2.jpg" alt="Card image cap"> 
                                
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Pursuit of Hapinnes</h3>
                              <p class="card-text"><b>Trajanje:</b>117min</p>
                              <p class="card-text"><b>Datum:20/06/2021</b></p>
                             
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/3.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Colateral Beauty</h3>
                              <p class="card-text"><b>Trajanje:</b>170min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                 </div>
                
                
                <div class="row  justify-content-center" > 
                
                
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                <img class="card-img-top" src="i/4.jpg" alt="Card image cap">
                                
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Predestination</h3>
                              <p class="card-text"><b>Trajanje:</b>170min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                             
                             <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/5.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Cars</h3>
                              <p class="card-text"><b>Trajanje:</b>140min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                      <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/6.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Seven Pounds</h3>
                              <p class="card-text"><b>Trajanje:</b>120min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
 
                 </div>

            
            <div class="row justify-content-center"> 
                  <div class="col-md-4">
                        <div class="card shadow" style="width: 20rem;">
                            <div class="inner">
                                
                                <img class="card-img-top" src="i/7.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Incrediles 2</h3>
                              <p class="card-text"><b>Trajanje:</b>130min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/8.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Interstellar</h3>
                              <p class="card-text"><b>Trajanje:</b>170min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                             <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                  <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/9.jpg" alt="Card image cap">
                            </div>
                           
                            <div class="card-body">
                              <h3 class="card-title">Coming to America</h3>
                              <p class="card-text"><b>Trajanje:</b>180min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                
                 </div>
            
            <div class="row justify-content-center"> 
            
            
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/10.jpg" alt="Card image cap">
                            </div>
                            
                            <div class="card-body">
                              <h3 class="card-title">Petter Rabbit</h3>
                              <p class="card-text"><b>Trajanje:</b>112min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                             <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                    <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/11.jpg" alt="Card image cap">
                            </div>
                           
                            <div class="card-body">
                              <h3 class="card-title">A Thousand worda</h3>
                              <p class="card-text"><b>Trajanje:</b>110min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                             <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
                      <div class="col-md-4">
                       <div class="card shadow" style="width: 20rem;">
                           <div class="inner">
                                
                                <img class="card-img-top" src="i/12.jpg" alt="Card image cap">
                            </div>
                           
                            <div class="card-body">
                              <h3 class="card-title">The War of Grandpa</h3>
                              <p class="card-text"><b>Trajanje:</b>115min</p>
                              <p class="card-text"><b>Datum:20/05/2021</b></p>
                              <p class="card-text"></p>
                              <a href="registracija.jsp" class="btn btn-success">Registruj se</a>
                            </div>
                          </div>
                  </div>
               
            
            
            
                 </div>
        
         </div>

        
    </body>
</html>
