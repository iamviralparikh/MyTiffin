<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>List User Addresses</title>
</head>
<body>
    <h2>List of User Addresses</h2>
    
    <table border="1">
        <thead>
            <tr>
                
                <th>Title</th>
                <th>Unit Name</th>
                <th>Street</th>
                <th>Landmark</th>
                <th>Zip Code</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="userAddress" items="${allUser}">
                <tr>
                    
                    <td>${userAddress.title}</td>
                    <td>${userAddress.unitName}</td>
                    <td>${userAddress.street}</td>
                    <td>${userAddress.landMark}</td>
                    <td>${userAddress.zipCode}</td>
                    <td>
                        <a href="viewuseraddress?userAddressId=${userAddress.userAddressId}">View</a> |
                        <a href="edituseraddress?userAddressId=${userAddress.userAddressId}">Edit</a> |
                        <a href="deleteuseraddress?userAddressId=${userAddress.userAddressId}" >Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    <a href="addusersaddress">Add New Address</a>
</body>
</html>
