<%@ page import="com.santos.web.jdbc.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Kata
  Date: 11/10/2017
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
</head>
<%
    // get the students from the request object (sent by servlet)
    List<Student> theStudents =
            (List<Student>) request.getAttribute("STUDENT_LIST");
%>
<body>
<h3>Update Student</h3>

<form action="StudentControllerServlet" method="get">
    <input type="hidden" name="command" value="UPDATE">
    <input type="hidden" name="studentId" value="${THE_STUDENT.id}">

    First Name: <input type="text" name="firstName" value="${THE_STUDENT.firstName}" >
    <br>
    Last Name: <input type="text" name="lastName" value="${THE_STUDENT.lastName}" >
    <br>
    Email: <input type="text" name="email" value="${THE_STUDENT.email}">
    <br>
    <input type="submit" value="Save">
</form>
<a href="StudentControllerServlet">Back to list</a>
</body>
</html>
