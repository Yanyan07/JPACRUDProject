<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Delete a Dog</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>	
</head>
<body>
	<h2>The Result of Deleting a Dog:</h2>
	<div>
	<c:choose>
		<c:when test="${isDeleted}">
		The Dog information has been deleted!
	</c:when>
		<c:otherwise>
		Fail to delete the dog information!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>

<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>