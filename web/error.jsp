<%-- 
    Document   : error
    Created on : 08-Jan-2021, 09:15:45
    Author     : paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>ERROR Page</title>
    </head>
    <body>
        <h1>Greska u radu sa baza podataka</h1>
        <h3>${poruka}</h3>
        
        
        
        <%
                 String msg=(String)request.getAttribute("poruka");
                 if(msg!=null){
                     
                     
                 %><%=msg%>
                 
                 
            
            <%}%>
        
        
    </body>
</html>
