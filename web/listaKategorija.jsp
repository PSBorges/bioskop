<%-- 
    Document   : listaKategorija
    Created on : 09-Apr-2021, 11:36:17
    Author     : paulo
--%>

<%@page import="beans.Kategorija"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Kategorija</title>
    </head>
    <body>
     
               <%
     
     ArrayList<Kategorija> proizvod =(ArrayList<Kategorija>)request.getAttribute("listaKategorija");
     
     %>
         
        
      <table align="center" border="1" >
            
            <tr align="center">
                
                <td colspan="5">Lista Kategorija</td>
                
            </tr>
            
            
            <tr align="center">
             
                <th>Ime Proizvoda</th>
                 <th>Brisanje</th>v
                
                
               
             </tr>
             
              
          
               <% for(Kategorija pom: proizvod){%>
               
               <form>
            <tr align="center">
         
                
                 <td><%=pom.getImeKategorija()%></td>
                 
                
                <td><p align="right"><a href="KategorijaFilmova?ID=<%=pom.getKategorijaID()%>"><input type="button" value="Pogledaj"></a> </p></td>
               
         
              </tr>
           
              <%}%> 

    </table>
        
        
        
        
        
        
    </body>
</html>
