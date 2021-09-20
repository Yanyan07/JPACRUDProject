<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Find All Dogs</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>	
</head>
<body>
	<h2>Please show all dog information:</h2>
	<div>
	<form action="findAll.do" method="get">
		 <input type="submit" value="Find All Dogs" />
	</form>
	</div>
	
<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>