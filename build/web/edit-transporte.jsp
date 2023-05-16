<%-- 
    Document   : cadastro
    Created on : 4 de mai. de 2023, 15:09:36
    Author     : QI
--%>

<%@page import="model.Transporte" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Transporte tr = (Transporte)request.getAttribute("transporte");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar</h1>
        <hr>
        
        <form action="TransporteController" method="post">
            <input type="text" name="cod" value="<%= tr.getCodTransporte() %>" readonly>
            <br><br>
            
            <input type="text" name="tipo" value="<%= tr.getTipo() %>" placeholder="Tipo de transporte" required>
            <br><br>
            
            <input type="number" name="assentos" value="<%= tr.getAssentos()%>" placeholder="Nº de assentos" min="1" required>
            <br><br>
            
            <select name="combustivel" required>
                <option value="<%= tr.getCombustivel()%>"><%= tr.getCombustivel()%></option>
                <option value="Gasolina">Gasolina</option>
                <option value="Etanol">Etanol</option>
                <option value="Diesel">Diesel</option>
                <option value="GNV">GNV</option>
                <option value="Pasto">Pasto</option>
            </select>
            
            <br><br>
            <input type="submit" value="Atualizar">
            
        </form>
        
        <br><hr>
        <a href="home.jsp">Página inicial</a>
    </body>
</html>
