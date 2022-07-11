<%@page import="com.sunil.dao.SubjectDao"%>
<%@page import="com.sunil.entity.Subjects"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject List portal</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<h1>subject lists</h1>

	<%
	List<Subjects> subjects = SubjectDao.listSubjects();
	request.setAttribute("sublist", subjects);
	%>
	
	<a href="admin.html" >Back</a>

	<table>
		<tr>
			<th>Subject Id</th>
			<th>Subject Name</th>
			<th>Author</th>
			<th>Description</th>
			<th>Price</th>

		</tr>
		<core:forEach items="${sublist}" var="sub">
			<tr>
				<td>${sub.getId()}</td>
				<td>${sub.getName()}</td>
				<td>${sub.getAuthor()}</td>
				<td>${sub.getDescription()}</td>
				<td>${sub.getPrice()}</td>
			</tr>

		</core:forEach>



	</table>
</body>
</html>