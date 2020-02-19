<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
	<%@page
		import="com.projetoJavaDesafioSefaz.Controller.UserDao,com.projetoJavaDesafioSefazBeans.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	<h1>Users List</h1>

	<%
		List<User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
	%>

	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getPhone()}</td>
				<td><a
					href="http://localhost:8082/projetoJavaDesafioSefaz/jsp/editform.jsp?id=${u.getId()}">Edit</a></td>
				<td><a
					href="http://localhost:8082/projetoJavaDesafioSefaz/jsp/deleteuser.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a
		href="http://localhost:8082/projetoJavaDesafioSefaz/jsp/adduserform.jsp">Add
		New User</a>
		
		<a
		href="http://localhost:8082/projetoJavaDesafioSefaz/jsp/logout.jsp">Logout</a>
		

</body>
</html>