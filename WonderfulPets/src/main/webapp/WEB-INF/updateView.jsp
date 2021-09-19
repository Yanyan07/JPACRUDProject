<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Update Dog Information</title>
</head>
<body>
	<h2>The Result of Updating Dog Information:</h2>
	<div>
	<c:choose>
		<c:when test="${isUpdated}">
		Dog information has been updated!
	</c:when>
		<c:otherwise>
		Fail to update dog information!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>