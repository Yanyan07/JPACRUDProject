<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search a Dog</title>
</head>
<body>

<h3>Please enter dog ID to search:</h3>
<form action="search.do" method="get">
	<label>Dog ID: <input type="text" name="id"  /></label><br/>
	<input type="submit" value="Search By Id" /><br/>
</form>

</body>
</html>