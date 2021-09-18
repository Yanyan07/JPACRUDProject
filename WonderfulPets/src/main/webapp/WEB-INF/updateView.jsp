<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Dog Information</title>
</head>
<body>
	<h3>The Result of Updating Dog Information:</h3>
	<c:choose>
		<c:when test="${isUpdated}">
		Dog information has been updated!
	</c:when>
		<c:otherwise>
		Fail to update dog information!
	</c:otherwise>
	</c:choose>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>