<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 	

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>

<title>List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<style>

.link-button {
            display: inline-block;
            padding: 2px 4px;
            background-color: #ff9800; /* Orange */
            color: #012970;
            text-decoration: none;
            font-size: 18px;
            border-radius: 25px;
            transition: 0.3s;
            text-align: center;
            border: none;
            width: 100%;
        }
        .link-button:hover {
            background-color: #e65100; /* Dark Orange */
        }
        .btn-link {
            padding: 8px 12px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .btn-link-back {
            background-color: #6c757d;
        }
        .ml-10 {
            margin-left: 35px;
        }
        .mr-10 {
            margin-left: 750px;
        }
        
</style>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindasboard">Home</a></li>
					<li class="breadcrumb-item active">User</li>
					<li class="breadcrumb-item active">List User</li>
				</ol>
			</nav>
		</div>
	<!--	 End Page Title -->
		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row" >
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


			<div class="card-body">
              	<h5 class="card-title">Datatables</h5>
              	

              <!-- Table with stripped rows -->
    			<table border="1" class="table datatable datatable-table table-hover" id="myTable">
					<thead>
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
                                <a href="viewuser?userId=${us.userId}" class="btn btn-sm btn-info"><i class="bi bi-eye"></i>-View</a>
                                <a href="edituser?userId=${us.userId}" class="btn btn-sm btn-warning"><i class="bi bi-pencil"></i>-Edit</a>
                                <a href="deleteuser?userId=${us.userId}" class="btn btn-sm btn-danger"><i class="bi bi-trash"></i>-Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
				</table>
    			
              <!-- End Table with stripped rows -->
</div>
            </div>
</div>
</div>
</div>
</div>
</section>

			
	</main>
	<!-- main content end  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
 
 	<script type="text/javascript">
 
 	$( document ).ready(function() {
 		let table = new DataTable('#myTable');
 	});
 	</script>


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>