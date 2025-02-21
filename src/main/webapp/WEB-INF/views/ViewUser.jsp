<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
</head>
<body>
	<h1>View User</h1>
	<table border=1>
	<tr>
		<th>First Name:</th>
		<th>Second Name:</th>
		<th>E-mail:</th>
		<th>Mobile Number:</th>
		<th>Gender:</th>
		<th>Date Of Birth</th>
	</tr>
	<tr>
	<td>${user.firstName}</td>
	<td>${user.lastName}</td>
	<td>${user.email}</td>
	<td>${user.contactNum}</td>
	<td>${user.gender}</td>
	<td>${user.dob}</td>
	
	<tr>
	</table>
</body>
</html>