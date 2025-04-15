<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Category</title>

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
			<h1>Add Category</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">Home</li>
					<li class="breadcrumb-item active">Category</li>
					<li class="breadcrumb-item active">Add Category</li>
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
										Add <span> Category</span>
									</h5>
									<a href="newcategory" class="btn-link ml-10"><i class="bi bi-plus"></i> Add Category</a>  
    <a href="displaycategory" class="btn-link btn-link-back mr-10"><i class="bi bi-arrow-left"></i> Back</a>
	<br>
	<br>
									<form action="savecategory" method="post">
        
        <div class="mb-3">
            <label for="categoryName" class="form-label">Add Category Name</label>
            <input type="text" class="form-control" id="categoryName" name="categoryName" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Active Status</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="isActive" id="activeYes" value="true" checked>
                <label class="form-check-label" for="activeYes">Active</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="isActive" id="activeNo" value="false">
                <label class="form-check-label" for="activeNo">Inactive</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
									
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