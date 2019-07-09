<jsp:useBean id="calcula" class="Beans.BeanJsp" type="Beans.BeanJsp" scope="page" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<jsp:setProperty property="*" name="calcula"/>
	<h3>Cabeçalho</h3>
	<br/>
	<jsp:getProperty property="nome" name="calcula"/>
	<br/>
	<jsp:getProperty property="ano" name="calcula"/>
	<br/>
	<jsp:getProperty property="sexo" name="calcula"/>

</body>
</html>