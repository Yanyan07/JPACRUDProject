<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wonderful Pets</title>
</head>
<body>

	<h1>Welcome to Wonderful Dogs!</h1>

	<h3>Dog list:</h3>
	<table>
		<tr>
			<th>Dog ID:</th>
			<th>Dog Name:</th>
			<th>Dog Age:</th>
			<th>Dog Breed:</th>
			<th>Dog Weight:</th>
		</tr>
	<c:forEach var="dog" items="${dogs}">
		<tr>
			<td>${dog.id}</td>
			<td>${dog.name}</td>
			<td>${dog.age}</td>
			<td>${dog.breed}</td>
			<td>${dog.weight}</td>
		
		</tr>
		<br/>
	</c:forEach>
	</table>
	<hr/>
	<h3>Search a dog</h3>
	<a href="search.jsp">Search</a>

	<h3>Add a new dog</h3>
	<a href="add.jsp">Add</a>

	<h3>Update a dog</h3>
	<a href="update.jsp">Update</a>

	<h3>Delete a dog</h3>
	<a href="delete.jsp">Delete</a>

</body>
</html>