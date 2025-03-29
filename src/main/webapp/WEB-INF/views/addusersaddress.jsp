<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Dashboard</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="usermanage">Home</a></li>
					<li class="breadcrumb-item active">Add My Address</li>
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
										New<span>Address</span>
									</h5>
									<form action="saveuseraddress" method="post">
                    
                        <label for="title" class="form-label">title Name</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="ex:-Home/Office/other">
                        <label for="unitName" class="form-label">Unit Name</label>
                        <input type="text" class="form-control" id="unitName" name="unitName" > 
                    
                    <br>
                        
                        <br>
                    Area : <select name="areaId">
						<option>Select Area</option>
							<c:forEach items="${allUsArea}" var="uarea">
								<option value="${uarea.areaId}">${uarea.areaName}</option>
							</c:forEach>
				        </select>
                    
                    <br>
                        
                        <br>
				        
				        City : <select name="cityId">
						<option>Select City</option>
							<c:forEach items="${allUsCity}" var="uct">
								<option value="${uct.cityId}">${uct.cityName}</option>
							</c:forEach>
				        </select>
				        <br>
				        <br>
				        
				        State : <select name="stateId">
						<option>Select State</option>
							<c:forEach items="${allUsState}" var="ust">
								<option value="${ust.stateId}">${ust.stateName}</option>
							</c:forEach>
				        </select>
				        <br>
				        </br>
				        
                        <label for="zipCode" class="form-label">zipCode</label>
                        <input type="text" class="form-control" id="zipCode" name="zipCode" > 
                    
                        <br>
                        <br>
                    
                    
                    
                    <br><button type="submit" class="btn btn-success">Submit</button>
                    
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