<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  	.round{border-radius: 25px;}
  	.view{color:grey; background-color: #eee; width:120px;}
  
  </style>
</head>
<body>
<form action="/Student/AddStudent.jsp">
	<input type="submit" value="Add Student">
</form>
<table border="1" cellpadding="1">
	<%-- <caption>List of Students</caption> --%>
		<tr>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>Gender</th>
			<th>Course</th>
			<th>Address</th>
		</tr>
		<c:forEach var="stu" items="${listStudent}">
			<tr>
				<td><c:out value="${stu.id}"></c:out></td>
				<td><c:out value="${stu.name}"></c:out></td>
				<td><c:out value="${stu.gender}"></c:out></td>
				<td><c:out value="${stu.course}"></c:out></td>
				<td><c:out value="${stu.addr}"></c:out></td>
				<td><a href="/Student/viewStudent.jsp?name=$(stu.id)" class="btn btn-light round view">View</a></td>
				<!-- <button type="button" class="btn btn-light round view">Block</button> -->
				<td><a href="/Student/removeStudent.jsp?name=$(stu.id)" class="btn btn-light round view">View</a></td>
			</tr>
		</c:forEach>
</table>
</body>
</html>