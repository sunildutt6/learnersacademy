<%@page import="com.sunil.dao.SubjectDao"%>
<%@page import="com.sunil.entity.Subjects"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject added confirmation</title>
</head>
<body>

	<%
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	String description = request.getParameter("description");
	double price = Double.parseDouble(request.getParameter("price"));

	Subjects s = new Subjects();
	s.setName(name);
	s.setAuthor(author);
	s.setDescription(description);
	s.setPrice(price);

	SubjectDao.addSubjects(s);

	out.println("<p>Records saved successfully</p>");
	out.println("<a href='subjects.html'>Back</a>");
	%>
</body>
</html>