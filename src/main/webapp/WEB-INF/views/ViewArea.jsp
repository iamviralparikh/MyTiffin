<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Area</title>
</head>
<body>
	<h1>View State</h1>
	<table border=1>
	<tr>
		<th>Area Name:</th>
		<!-- <th>city Name</th> -->
	</tr>
	<tr>
	<td>${area.areaName}</td>
	<!-- <td>${city.cityName}</td> -->
	</tr>
	</table>
</body>
</html>