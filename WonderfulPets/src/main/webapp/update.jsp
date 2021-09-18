<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Dog</title>
</head>
<body>

<h3>Please enter information to update a dog:</h3>
<form action="update.do" method="get">
	<label>Dog ID: </label><input type="text" name="id" value="id" /><br/>
	<label>Dog Name: </label><input type="text" name="name" value="name" /><br/>
	<label>Dog Age: </label><input type="text" name="age" value="age" /><br/>
	<label>Dog Breed: </label><input type="text" name="breed" value="breed" /><br/>
	<label>Dog Weight: </label><input type="text" name="weight" value="weight" /><br/>
	<input type="submit" value="Update a Dog" /><br/>
</form>

</body>
</html>