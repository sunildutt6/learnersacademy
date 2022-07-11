<%@page import="com.mysql.cj.callback.UsernameCallback"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%
	String user = request.getParameter("username");
	String pass = request.getParameter("password");

	if (user.equals("admin") && pass.equals("password")) {
		//out.println("Welcome " + user);
		response.sendRedirect("admin.html");

	} else {
		out.print("Invalid username or password");
	}
	%>



</body>
</html>