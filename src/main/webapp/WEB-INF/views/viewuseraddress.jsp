<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View User Address</title>
</head>
<body>
    <h2>Address Details</h2>
    <p><strong>Title:</strong> ${viewuseradd.title}</p>
    <p><strong>Unit Name:</strong> ${viewuseradd.unitName}</p>
    <p><strong>Street:</strong> ${viewuseradd.street}</p>
    <p><strong>Landmark:</strong> ${viewuseradd.landMark}</p>
    <p><strong>Zip Code:</strong> ${viewuseradd.zipCode}</p>

    <a href="listuseraddress">Back to List</a>
</body>
</html>
