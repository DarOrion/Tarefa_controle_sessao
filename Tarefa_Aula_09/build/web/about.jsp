<%-- 
    Document   : index
    Created on : 11 de abr. de 2022, 21:19:42
    Author     : rlarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About_SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(session.getAttribute("username")!=null){%>
            <h1>RA: 1290482023002 </h1>
            <h1>Nome Completo: Marcelo Felicio Pereira </h1>
            <h1>Meu GitHub: </h1> <a href="https://github.com/DarOrion">GITHUB </a> 
            
        <%}%>
    </body>
</html>