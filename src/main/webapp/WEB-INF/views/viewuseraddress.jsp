<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View User Address</title>
</head>
<body>
    <h2>Address Details</h2>
    <p><strong>Title:</strong> ${user.title}</p>
    <p><strong>Unit Name:</strong> ${user.unitName}</p>
    <p><strong>Street:</strong> ${user.street}</p>
    <p><strong>Landmark:</strong> ${user.landMark}</p>
    <p><strong>Zip Code:</strong> ${user.zipCode}</p>

    <a href="listuseraddress">Back to List</a>
</body>
</html>
