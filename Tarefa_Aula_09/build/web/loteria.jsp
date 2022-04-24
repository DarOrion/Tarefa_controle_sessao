<%-- 
    Document   : index
    Created on : 11 de abr. de 2022, 21:19:42
    Author     : rlarg
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loteria_SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(session.getAttribute("username")!=null){%>
            <h2>Loteria</h2>
            <p>São gerado na tabela abaixo 6 números aleatórios </p>
            
          
            <h3>Dica para jogo de loteria</h3>    
            <%
            int valor;
                int vetor[] = new int[6];
                Random a = new Random();

                for(int i=0; i<vetor.length; i++){
                valor = a.nextInt(60) + 1;
                for(int j=0; j<vetor.length; j++){
                   if(valor == vetor[j] && j != i){
                         valor = a.nextInt(60) + 1;
                   }else{
                        vetor[i] = valor;
                   }
                }
            }
        %>

        <table border="1">
            <tr>
                <h2>Números Gerados</h2>
                <td><%= vetor[0]%></td>
                <td><%= vetor[1]%></td>
                <td><%= vetor[2]%></td>
                <td><%= vetor[3]%></td>
                <td><%= vetor[4]%></td>
                <td><%= vetor[5]%></td>

            </tr>
        </table>
        
            <%}%>
    </body>
</html>