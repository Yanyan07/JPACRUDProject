<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Show Dog Detail</title>
</head>
<body>

<h2>The dog information found: </h2>
<div>
<c:choose>
	<c:when test="${not empty dog}">
		<span>Dog ID: </span>${dog.id}<br/>
		<span>Dog Name: </span>${dog.name}<br/>
		<span>Dog Age: </span>${dog.age}<br/>
		<span>Dog Breed: </span>${dog.breed}<br/>
		<span>Dog Weight: </span>${dog.weight}<br/>
	</c:when>
	<c:otherwise>
		No Dog Found!
	</c:otherwise>
</c:choose>
</div>
<hr/>
<a href="home.do">Back to Home</a>
</body>
</html>