<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recebe parâmetro</title>
</head>
<body>
	<% 
	String nome = "Nome recebido: " + request.getParameter("nome");
	out.print(nome);
	//out.print(request.getParameter("nome")); 
	%> 
	
	<br/>
	
	<%=
	"Nome recebido / Tag Expressão de Print: " + request.getParameter("nome")
	%>
	
	<br/>
	
	<%= request.getContextPath() %>
	<br/>
	<% //response.sendRedirect("https://mouseweb.com.br/"); %>
	<% //response.sendRedirect("/cadastro-pessoa.jsp") %>
	
	<br/>
	
	<%= session.getAttribute("user") %>
</body>
</html>