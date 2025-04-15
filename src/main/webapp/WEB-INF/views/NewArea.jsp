<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Add Area</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Add Area</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Area</li>
					<li class="breadcrumb-item active">Add Area</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row" >
						<!-- Reports -->
						<div class="col-12">
							<div class="card">

							 
								<div class="card-body">
									<h5 class="card-title">
										Add <span>/Area</span>
									</h5>
<form action="savearea" method="post">

            <!-- State Name -->
            <div class="mb-3">
                <label for="areaName" class="form-label">area Name</label>
                <input type="text" class="form-control" id="areaName" name="areaName" >
            </div>
											
											<div class="col-md-15">
											
											City : <select name="cityId">
											 <option>Select City</option>
											<c:forEach items="${allCity1}" var="ct">
												<option value="${ct.cityId}">${ct.cityName}</option>
											</c:forEach>
										</select>
										<br>
										<br>
											State : <select name="stateId" >
												<option>Select State</option>
												<c:forEach items="${allStateCity}" var="state">
													<option value="${state.stateId}">${state.stateName}</option>
												</c:forEach>
											</select>
										</div>
			
											 <br> <br>
										
            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary w-100">Save Area</button>

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
 <script type="text/javascript">


</script> 



	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>