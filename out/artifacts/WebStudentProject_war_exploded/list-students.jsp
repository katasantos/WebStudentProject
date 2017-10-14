<%--
  Created by IntelliJ IDEA.
  User: Kata
  Date: 10/10/2017
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>List Student</title>
</head>
<body>


<input type="submit" value="Add Student"
       onclick="window.location.href='add-student-form.jsp'; return false">

<table border="1px">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
    </tr>

    <c:forEach var="tempStudent" items="${STUDENT_LIST}">

        <!-- set up a link for each student -->
        <c:url var="tempLink" value="StudentControllerServlet">
            <c:param name="command" value="LOAD" />
            <c:param name="studentId" value="${tempStudent.id}" />
        </c:url>

        <!-- set up a link to delete a student -->
        <c:url var="deleteLink" value="StudentControllerServlet">
            <c:param name="command" value="DELETE" />
            <c:param name="studentId" value="${tempStudent.id}" />
        </c:url>

        <tr>
            <td>${tempStudent.firstName}</td>
            <td>${tempStudent.lastName}</td>
            <td>${tempStudent.email}</td>
            <td><a href="${tempLink}">Update</a>
                |
                <a href="${deleteLink}"
                onclick="if (!(confirm( 'Are you sure you want to delete this student?'))) return false">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
