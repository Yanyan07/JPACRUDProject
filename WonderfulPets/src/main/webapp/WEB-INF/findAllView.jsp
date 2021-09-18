<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show All Dogs</title>
</head>
<body>
	<h3>Dogs list:</h3>
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
			<br />
		</c:forEach>
	</table>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>