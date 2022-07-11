<%@page import="com.sunil.dao.ClassDao"%>
<%@page import="com.sunil.entity.Classes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class lists</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<h1>class lists</h1>
	<%
	List<Classes> klasses = ClassDao.listClasses();
	request.setAttribute("klist", klasses);
	%>
	
	<a href="admin.html" >Back</a>

	<table >
		<tr>
			<th>Class Id</th>
			<th>Class Name</th>
			<th>Class Type</th>

		</tr>
		<core:forEach items="${klist}" var="klass">
			<tr>
				<td>${klass.getId()}</td>
				<td>${klass.getName()}</td>
				<td>${klass.getType()}</td>
			</tr>

		</core:forEach>



	</table>




</body>
</html>