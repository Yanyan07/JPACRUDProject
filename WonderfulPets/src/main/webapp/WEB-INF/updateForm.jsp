<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Dog</title>
</head>
<body>
<h3>Please enter information to update a dog:</h3>
<form action="update.do" method="get">
	<label>Dog ID: <input type="text" name="id" value="${dog.id}" /></label><br />
	<label>Dog Name: <input type="text" name="name" value="${dog.name}" /></label><br /> 
	<label>Dog Age: <input type="text" name="age" value="${dog.age}" /></label><br /> 
	<label>Dog Breed: <input type="text" name="breed" value="${dog.breed}" /></label><br /> 
	<label>Dog Weight: <input type="text" name="weight" value="${dog.weight}" /></label><br /> 
	<input type="submit" value="Update a Dog" /><br />
</form>
</body>
</html>