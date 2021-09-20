<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Update a Dog</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>	
</head>
<body>
<h2>Please enter a dog ID to update a dog:</h2>
<div>
<form action="get.do" method="get" >
	<label>Dog ID to be updated: <input type="text" name="id" value="id" /></label><br/>
	<input type="submit" value="Update Dog By ID" />
</form>
</div>

<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>