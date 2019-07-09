<jsp:useBean id="calcula" class="Beans.BeanJsp" type="Beans.BeanJsp" scope="page" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP</title>
</head>
<body>
	<h1>JSP - Home</h1>
	<!-- -------------------------------------------------------- -->
	
	<!-- Incluide Dinâmico -->
	
	<jsp:include page="cabecalho.jsp"/>
	
	<!-- -------------------------------------------------------- -->
	
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
	
	<!-- -------------------------------------------------------- -->
	
	<%! String tag = "Tag declarativa"; %>
	
	<%= cont %>
	<br/>
	<%= tag %>
	<br/>
	<%= retorna(5) %>
	<br/>
	<%= application.getInitParameter("estado") %>
	
	<% session.setAttribute("user", "douglas"); %>
	
	<!-- -------------------------------------------------------- -->
	
	<!-- Directivas -->
	<%@ page import="java.util.Date"%>
	
	<%= "Data de hoje: " + new Date()%>
	
	<%@ page errorPage="receber-nome.jsp"%>
	
	<%= 100/2%>
	
	<!-- -------------------------------------------------------- -->
	
	<!-- Include e Tag lib em JSP -->
	
	<%@ include file="pagina-incluide.jsp" %>
	
	<myprefix:minhatag/>
	
	
	<jsp:include page="rodape.jsp"/>
	
	<!-- Java Ben é uma Class que processar dados na memoria em tempode execução -->
	
	<%= calcula.calculaMetodo(50) %>
	
</body>
</html>