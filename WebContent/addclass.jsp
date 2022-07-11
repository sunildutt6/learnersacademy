<%@page import="com.sunil.dao.ClassDao"%>
<%@page import="com.sunil.entity.Classes"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String name= request.getParameter("cname");
String type= request.getParameter("ctype");

Classes klass = new Classes();

klass.setName(name);
klass.setType(type);

ClassDao.addClass(klass);

out.println("<p>Records saved successfully</p>");
out.println("<a href='class.html'>Back</a>");
%>

</body>
</html>