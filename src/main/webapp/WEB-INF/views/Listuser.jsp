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
	<style>
         body {
            background: url('background_signup_login.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .table-container {
            background: rgba(255, 255, 255, 0.3); /* Semi-transparent blue */
            backdrop-filter: blur(10px); /* Glass effect */
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.5);
            color: white;
            font-weight: bold;
        }
        th {
            background-color: #0d6efd; /* Bootstrap primary blue */
        }
        tr:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
    </style>
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
                        <th>Date Of Birth</th>
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
                            <td>${us.dob}</td>
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