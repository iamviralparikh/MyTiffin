<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Users</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container mt-5">
        <h2 class="text-center mb-4">User List</h2>

        <div class="table-responsive">
            <table class="table table-bordered table-hover shadow-sm bg-white">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Mobile Number</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${Listuser}" var="us">
                        <tr>
                            <td>${us.userId}</td>
                            <td>${us.firstName}</td>
                            <td>${us.lastName}</td>
                            <td>${us.gender}</td>
                            <td>${us.email}</td>
                            <td>${us.contactNum}</td>
                            <td>
                                <a href="viewuser?userId=${us.userId}" class="btn btn-sm btn-info">View</a>
                                <a href="edituser?userId=${us.userId}" class="btn btn-sm btn-warning">Edit</a>
                                <a href="deleteuser?userId=${us.userId}" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

    
<!--     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
</head>
<body>
	<table border=1>
	<tr>
		<th>id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gender</th>
		<th>Mail-ID</th>
		<th>Mobile Number</th>
		<th>Action</th>
	</tr>

		<c:forEach items="${Listuser}" var="us" >
			<tr>
				<td>${us.userId}</td>
				<td>${us.firstName}</td>
				<td>${us.lastName}</td>
				<td>${us.gender}</td>
				<td>${us.email}</td>
				<td>${us.contactNum}</td>
				<td><a href="viewuser">View</a><a href=""> | Delete</a><a href=""> | Edit</a></td>
			</tr>
		</c:forEach>
	
	</table>

</body>
</html>
 -->