<%@page import="model.MyConn"%>
<%
    out.print("Teste de conex�o com o banco de dados:<hr>");
    
    if(MyConn.getConnection() != null) {
        out.print("Conex�o bem sucedida!");
        out.print("<br>Banco de dados: " + MyConn.getConnection().getCatalog());
    } else {
        out.print("Erro de conex�o!");
    }
%>