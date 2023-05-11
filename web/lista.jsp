<%-- 
    Document   : lista
    Created on : 4 de mai. de 2023, 15:09:41
    Author     : QI
--%>

<%@page import="model.TransporteDAO"%>
<%@page import="model.Transporte"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transportes</title>
    </head>
    <body>
        <h1>Listar</h1>
        <table>
            <thead>
                <th>CODIGO</th>
                <th>TRANSPORTE</th>
                <th>ASSENTOS</th>
                <th>COMBUSTÍVEL</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
              <%
                    TransporteDAO tdao = new TransporteDAO();
                    for(Transporte item : tdao.listTransporte()){
                    %>
                <tr>
                    <td><%= item.getCodTransporte() %></td>
                    <td><%= item.getTipo()%></td>
                    <td><%= item.getAssentos()%></td>
                    <td><%= item.getCombustivel()%></td>
                    <td>
                        <a href="#edit<%= item.getCodTransporte() %>">✏</a>
                    </td>
                    <td>
                        <a href="#delete<%= item.getCodTransporte() %>">🗑</a>
                    </td>
                </tr>
              <%
                    }
                    %>
            </tbody>
            
            
        </table>
        
        <br><hr>
        <a href="home.jsp">Página inicial</a>
    </body>
</html>
