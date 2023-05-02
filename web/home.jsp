<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 14:29:27
    Author     : QI
--%>

<%@include file="session/verify.jsp" %>
<%@page import="model.User"%>
<%   
    User userSession = (User) session.getAttribute("newUserSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transporte</title>
    </head>
    <body>
        <button type="button" onclick="window.location.href='session/logout.jsp'">Logout</button>
        <h1> Bem vindo <%= userSession %> </h1>
    </body>
</html>
