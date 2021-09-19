<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Show All Dogs</title>
</head>
<body>
	<h2>Dogs list:</h2>
	<div>
	<table id="table-div">
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
			
		</c:forEach>
	</table>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>