<%-- 
    Document   : kupovinaKtest
    Created on : 14-Jan-2021, 21:13:43
    Author     : paulo
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Kupovina, beans.Proizvod, servleti.ListaProizvoda" %> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 align="center">
            <%
                String msg=(String)request.getAttribute("msg");
                if(msg!=null)
                {
                      %> <h1> ADMIN <%=msg%></h1> <%
                    
                 }
                %>
   
            
        </h2>
    
           <%!     
               
        Kupovina kupovina;
        Proizvod proizvod;
        
         %>
         
        
         <% proizvod =(Proizvod)request.getAttribute("listaPP"); %>  
         
         <%
     
     ArrayList<Proizvod> proizvod =(ArrayList<Proizvod>)request.getAttribute("listaPP");
     
     %>
       
 
        
     <form action="KupovinaTest" method="post">
            
     
       <table align="center" border="1" >
            
            <tr align="center">
                
                <td colspan="5">Lista Proizvoda</td>
                
            </tr>
            
            
            <tr align="center">
             
                <th>Ime Proizvoda</th>
                
                
               
             </tr>
             
              
          
               <% for(Proizvod pom: proizvod){%>
            <tr align="center">
         
                
                 <td><%=pom.getImeProizvoda()%></td>
                
                
                <td><input type="submit" value="Kupovina"></td>
         
              </tr>
           
              <%}%> 

    </table>
               
              <p align="lefth"><a href="dodavanjeProizvoda.jsp"><input type="button" value="Dodaj Proizvod"></a></p>
              
              <a href="admin.jsp">Nazad</a>
               <td><p align="right"><input type="submit" value="Kupovina"></a> </p></td>
         </form>
        
        
        
        
        
        
        
        
    </body>
</html>
