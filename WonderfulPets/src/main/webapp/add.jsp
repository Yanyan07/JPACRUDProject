<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Add A new Dog</title>
</head>
<body>

<h2>Please enter information to add a new dog:</h2>
<div>
<form action="add.do" method="get">
	<label>Dog Name: <input type="text" name="name" value="name" /></label><br/>
	<label>Dog Age: <input type="text" name="age" value="age" /></label><br/>
	<label>Dog Breed: <input type="text" name="breed" value="breed" /></label><br/>
	<label>Dog Weight: <input type="text" name="weight" value="weight" /></label><br/>
	<input type="submit" value="Add a Dog" /><br/>
</form>
</div>

</body>
</html>