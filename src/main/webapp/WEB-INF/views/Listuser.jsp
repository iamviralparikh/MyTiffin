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
	<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<jsp:include page="AdminCss.jsp"></jsp:include>
	
</head>
<body class="bg-light">
		<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>
		
<div class="col-24">
<div class="card">
<div class="card-body">
<h5 class="card-title">list of <span> User</span></h5>
    
            
   </div>
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