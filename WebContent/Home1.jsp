<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
</head>
<body bgcolor="00ff35">
	<center>
		<h1><u>Home Page</u></h1>
	</center>
	<h1>Welcome</h1>
	<h2><u><%=request.getAttribute("Email")%></u></h2>
	
	<div style="text-align: right">
		<h2><a href="LogoutServlet">Logout</a></h2>
	</div>
</body>
</html>