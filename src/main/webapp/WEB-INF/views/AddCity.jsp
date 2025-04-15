<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add City</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Add City</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">City</li>
					<li class="breadcrumb-item active">Add City</li>
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
										New<span>City</span>
									</h5>
									<form action="savecity" method="post">
                    <div class="mb-3">
                        <label for="cityName" class="form-label">City Name</label>
                        <input type="text" class="form-control" id="cityName" name="cityName" required>
                        <!-- <label for="cityName" class="form-label">state id</label>
                        <input type="text" class="form-control" id="cityName" name="stateId" required> -->
                        State : <select name="stateId">
						<option>Select State</option>
							<c:forEach items="${allState}" var="s">
								<option value="${s.stateId}">${s.stateName}</option>
							</c:forEach>
				</select>
                    </div>
                    <button type="submit" class="btn btn-success">Submit</button>
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