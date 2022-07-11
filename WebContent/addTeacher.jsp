<%@page import="com.sunil.entity.Address"%>
<%@page import="com.sunil.dao.TeacherDao"%>
<%@page import="com.sunil.entity.Subjects"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sunil.entity.Classes"%>
<%@page import="com.sunil.entity.Teacher"%>
<%@page import="com.sunil.entity.PhoneNumber"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher record creation successfully</title>
</head>
<body>

	<%
	//info
	Teacher teacher = new Teacher();
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");

	//address
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	int pin = Integer.parseInt(request.getParameter("pin"));

	//phone number
	int workphone = Integer.parseInt(request.getParameter("workphone"));
	int homephone = Integer.parseInt(request.getParameter("homephone"));

	//address
	Address address = new Address();
	address.setCity(city);
	address.setPin(pin);
	address.setState(state);
	teacher.setAddress(address);

	//assigining phone to teacher and setting up
	PhoneNumber phone = new PhoneNumber();
	phone.setHome(homephone);
	phone.setWork(workphone);

	//classes
	String classnameOne = request.getParameter("classnameOne");
	String classnameTwo = request.getParameter("classnameTwo");
	Classes klass1 = new Classes();
	klass1.setName(classnameOne);
	klass1.setTeacher(teacher);

	Classes klass2 = new Classes();
	klass2.setName(classnameTwo);
	klass2.setTeacher(teacher);

	List<Classes> klasses = new ArrayList<>();
	klasses.add(klass1);
	klasses.add(klass2);

	//subjects 1
	String subnameOne = request.getParameter("subnameOne");
	Subjects subject1 = new Subjects();
	subject1.setName(subnameOne);
	subject1.setTeacher(teacher);

	String subnameTwo = request.getParameter("subnameTwo");
	//Subjects subject2 = new Subjects();
	subject1.setName(subnameTwo);
	subject1.setTeacher(teacher);

	//teacher setup
	teacher.setFirstname(firstname);
	teacher.setLastname(lastname);
	teacher.setAddress(address);
	teacher.setPhonenumber(phone);

	List<Teacher> teachers = new ArrayList<>();
	teachers.add(teacher);

	TeacherDao.addTeacher(teacher);

	out.println("<p>Records saved successfully</p>");
	out.println("<a href='teacher.html'>Back</a>");
	%>

</body>
</html>