<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Delete a Dog</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>	
</head>
<body>

<h2>Please enter information to delete a dog:</h2>
<div>
<form action="delete.do" method="get">
	<label>Dog ID: <input type="text" name="id" value="id" /></label><br/>
	<input type="submit" value="Delete By Id" />
</form>
</div>

<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>