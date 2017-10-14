<%--
  Created by IntelliJ IDEA.
  User: Kata
  Date: 11/10/2017
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
<h3>Add Student</h3>

<form action="StudentControllerServlet" method="get">
    <input type="hidden" name="command" value="ADD">

    First Name: <input type="text" name="firstName">
    <br>
    Last Name: <input type="text" name="lastName">
    <br>
    Email: <input type="text" name="email">
    <br>
    <input type="submit" value="Save">
</form>
<a href="StudentControllerServlet">Back to list</a>
</body>
</html>
