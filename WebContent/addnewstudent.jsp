<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.sunil.util.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.sunil.entity.Address"%>
<%@page import="com.sunil.entity.Classes"%>
<%@page import="com.sunil.entity.Student"%>
<%@page import="com.sunil.entity.PhoneNumber"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student added successfully</title>
</head>
<body>
	<%
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String email = request.getParameter("email");

	String city = request.getParameter("city");
	String state = request.getParameter("state");
	int pin = Integer.parseInt(request.getParameter("pin"));

	int work = Integer.parseInt(request.getParameter("work"));
	int home = Integer.parseInt(request.getParameter("home"));

	String klass = request.getParameter("class");
	%>

	<%
	Student student = new Student();
	student.setFirstname(fname);
	student.setLastname(lname);
	student.setEmail(email);

	//phone number
	PhoneNumber phoneNumber = new PhoneNumber();
	phoneNumber.setHome(home);
	phoneNumber.setWork(work);

	//classes
	Classes classes = new Classes();
	classes.setName(klass);


	//address
	Address address = new Address();
	address.setCity(city);
	address.setPin(pin);
	address.setState(state);

	student.setClasses(classes);
	student.setAddress(address);
	student.setPhonenumber(phoneNumber);

	SessionFactory sf = HibernateUtil.getSessionFactory();
	Session session2 = sf.openSession();

	Transaction tx = session2.beginTransaction();

	session2.save(student);

	tx.commit();

	session2.close();

	out.println("<p>Records saved successfully</p>");
	out.println("<a href='student.html'>Back</a>");
	%>

</body>
</html>