<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP</h1>
	
	<form action="receber-nome.jsp">
		<input type="text" id="nome" name="nome">
		<input type="submit" value="Enviar"/>
	</form>
	
	<% out.print("OK - Tag Print" ); %>
	<br/>
	<%= "Tag Expressão de Print" %>
	<br/>
	
	<%! int cont = 10; 
	
		public int retorna(int n){
			return n * 3;
		}
		
	%>
	<%! String tag = "Tag declarativa"; %>
	
	<%= cont %>
	<br/>
	<%= tag %>
	<br/>
	<%= retorna(5) %>
	<br/>
	<%= application.getInitParameter("estado") %>
	
</body>
</html>