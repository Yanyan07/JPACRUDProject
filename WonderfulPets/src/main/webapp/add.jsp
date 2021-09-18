<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add A new Dog</title>
</head>
<body>

<h3>Please enter information to add a new dog:</h3>
<form action="add.do" method="get">
	<label>Dog Name: </label><input type="text" name="name" value="name" /><br/>
	<label>Dog Age: </label><input type="text" name="age" value="age" /><br/>
	<label>Dog Breed: </label><input type="text" name="breed" value="breed" /><br/>
	<label>Dog Weight: </label><input type="text" name="weight" value="weight" /><br/>
	<label></label><input type="submit" Value="Add a Dog" /><br/>
</form>

</body>
</html>