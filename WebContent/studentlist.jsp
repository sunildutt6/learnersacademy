<%@page import="com.sunil.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.sunil.util.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student details</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<h1>Student details</h1>

	<%
	SessionFactory sf = HibernateUtil.getSessionFactory();
	Session session2 = sf.openSession();

	List<Student> students = session2.createQuery("from Student").list();
	request.setAttribute("stulist", students);
	%>
	
	<a href="admin.html" >Back</a>

	<table>
		<tr>
			<th>Student Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Address</th>
			<th>Phone Number</th>
			<th>Email address</th>
			<th>Classes</th>
		</tr>
		<core:forEach items="${stulist}" var="stu">
			<tr>
				<td>${stu.getId()}</td>
				<td>${stu.getFirstname()}</td>
				<td>${stu.getLastname()}</td>
				<td>${stu.getAddress()}</td>
				<td>${stu.getPhonenumber()}</td>
				<td>${stu.getEmail() }</td>
				<td>${stu.getClasses()}</td>
			</tr>
		</core:forEach>
	</table>

</body>
</html>


