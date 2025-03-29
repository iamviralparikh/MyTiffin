<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Edit City</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>EDIT-User-Address</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="Admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Edit User Address</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


								<div class="card-body">
									<h5 class="card-title">
										Edit <span>/Address</span>
									</h5>

									<form action="updateuseraddress" method="post">
										<input type="hidden" name="userAddressId" value="${viewuseradd.userAddressId}">

										<label>Title-Name:</label> 
										<input type="text" name="title" value="${viewuseradd.title}"/><br>
										<br>
										<label>Unit-Name:</label> 
										<input type="text" name="title" value="${viewuseradd.unitName}"/><br>
										<br>
										<label>LandMark:</label> 
										<input type="text" name="title" value="${viewuseradd.landMark}"/><br>
										<br>
										<label>City-Name:</label> 
										<input type="text" name="title" value="${viewuseradd.cityName}"/><br>
										<br>
										<label>State-Name:</label> 
										<input type="text" name="title" value="${viewuseradd.stateName}"/><br>
										<br>
										<label>Area-Name:</label> 
										<input type="text" name="title" value="${viewuseradd.areaname}"/><br>
										<br>
										<label>Zip Code:</label> 
										<input type="text" name="title" value="${viewuseradd.zipCode}"/><br>
										<br>
										<button type="submit">Update</button>
									</form>

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