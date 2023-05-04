<%@page import="model.MyConn"%>
<%
    out.print("Teste de conexão com o banco de dados:<hr>");
    
    if(MyConn.getConnection() != null) {
        out.print("Conexão bem sucedida!");
        out.print("<br>Banco de dados: " + MyConn.getConnection().getCatalog());
    } else {
        out.print("Erro de conexão!");
    }
%>