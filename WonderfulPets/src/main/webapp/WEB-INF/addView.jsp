<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Add a New Dog</title>
</head>
<body>
	<h2>The Result of Adding a New Dog:</h2>
	<div>
	<c:choose>
		<c:when test="${isAdded}">
		A new dog has been added to database!
	</c:when>
		<c:otherwise>
		Fail to add a new dog!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>