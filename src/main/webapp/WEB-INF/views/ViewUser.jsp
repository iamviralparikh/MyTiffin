<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>view User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">Home</li>
					<li class="breadcrumb-item active">User</li>
					<li class="breadcrumb-item active">List User</li>
					<li class="breadcrumb-item active">View User</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Sales Card -->
						<!-- Customers Card -->
						<!-- <div class="col-xxl-4 col-xl-12">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Customers <span>| This Year</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>1244</h6>
											<span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span>

										</div>
									</div>

								</div>
							</div>

						</div> -->
						<!-- End Customers Card -->

						<!-- Reports -->
						<div class="col-12">
							<div class="card">

								<div class="card-body">
									<h5 class="card-title">
										Dashboard<span> OF Admin</span>
									</h5>
									
									

									<table class="table table-bordered border-primary">
                <thead><tr>
		<th>First Name:</th>
		<th>Second Name:</th>
		<th>E-mail:</th>
		<th>Mobile Number:</th>
		<th>Gender:</th>
		<th>Date Of Birth</th>
		<th>Address</th>
		<th>Photo</th>
	</tr>    
	</thead>
	<tbody>
	<tr>
	<td>${user.firstName}</td>
	<td>${user.lastName}</td>
	<td>${user.email}</td>
	<td>${user.contactNum}</td>
	<td>${user.gender}</td>
	<td>${user.dob}</td>
	<td>${user.dob}</td>
	<td>
	 	<img src="${user.profilePicPath}" height="100px" width = "100px">
	</td>
	<tr>
	</tbody>
	</table>
			<!-- Start the Table -->
		
        <!-- End Table -->
        
    </div>
</div>

              <!-- End Default Table Example -->
									<br> <br> <br> <br>


								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>
