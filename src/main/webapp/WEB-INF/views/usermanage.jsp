<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management</title>
</head>
<body>
	<h1>User Management</h1>
	<h3>Hey!! + ${user.firstName} & ${user.lastName}</h3>
	<table border=1>
	<tr>
		<td>User Address</td>
		<td>Cart</td>
		<td>Order</td>
	</tr>
	<tr>
		<th><a href="adduseraddress">Add Address</a></th>
		<th><a href="">Add to cart</a></th>
		<th><a href="">View Order</a></th>
	</tr>
	</table>
	<a href="logout">Log out</a>

</body>
</html>