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
String firstname= request.getParameter("firstname");
String lastname= request.getParameter("lastname");

//address
String city= request.getParameter("city");
String state = request.getParameter("state");
int pin = Integer.parseInt(request.getParameter("pin"));

//phone number
int workphone= Integer.parseInt(request.getParameter("workphone"));
int homephone= Integer.parseInt(request.getParameter("homephone"));



Teacher teacher = new Teacher();
teacher.setFirstname(firstname);
teacher.setLastname(lastname);

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
teacher.setPhonenumber(phone);

//classes 1
String classnameOne= request.getParameter("classnameOne");
Classes klass1 = new Classes();
klass1.setName(classnameOne);
klass1.setTeacher(teacher);





//classes2 
String classnameTwo= request.getParameter("classnameTwo");
Classes klass2 = new Classes();
klass2.setName(classnameTwo);
klass2.setTeacher(teacher);



List<Classes> klasses = new ArrayList<Classes>();
klasses.add(klass1);
klasses.add(klass2);
teacher.setClasses(klasses);


//subjects 1
String subnameOne= request.getParameter("subnameOne");
Subjects subject1 = new Subjects();
subject1.setName(subnameOne);
subject1.setTeacher(teacher);

//subjects 2
String subnameTwo= request.getParameter("subnameTwo");
Subjects subject2 = new Subjects();
subject2.setName(subnameTwo);
subject2.setTeacher(teacher);

List<Subjects> subjekts = new ArrayList<>();
subjekts.add(subject1);
subjekts.add(subject2);
teacher.setSubjects(subjekts);


List<Teacher> teachers = new ArrayList<Teacher>();
teachers.add(teacher);

TeacherDao.addTeacher(teacher);



out.println("<p>Records saved successfully</p>");
out.println("<a href='teacher.html'>Back</a>");




%>

</body>
</html>