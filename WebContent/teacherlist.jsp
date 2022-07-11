<%@page import="com.sunil.dao.TeacherDao"%>
<%@page import="com.sunil.entity.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TeacherList</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<h1>teacher list</h1>

	<%
	List<Teacher> teachers = TeacherDao.listTeacher();
	request.setAttribute("teacherlist", teachers);
	%>

	<a href="admin.html">Back</a>

	<table>
		<tr>
			<th>Teacher Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Address</th>
			<th>PhoneNumbers</th>
			<th>Classes</th>
			<th>Subjects</th>

		</tr>
		<core:forEach items="${teacherlist}" var="tec">
			<tr>
				<td>${tec.getId()}</td>
				<td>${tec.getFirstname()}</td>
				<td>${tec.getLastname()}</td>
				<td>${tec.getAddress()}</td>
				<td>${tec.getPhonenumber()}</td>
				<td>${tec.getClasses()}</td>
				<td>${tec.getSubjects()}</td>



			</tr>

		</core:forEach>



	</table>

</body>
</html>