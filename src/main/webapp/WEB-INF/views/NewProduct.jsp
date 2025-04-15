<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Product</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Add Product</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Product</li>
					<li class="breadcrumb-item active">Add Product</li>
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
										New <span>/Product</span>
									</h5>

									<form action="saveproduct" method="post"
										enctype="multipart/form-data">


										<label for="productName" class="form-label">Product
											Name</label> <input type="text" class="form-control" id="productName"
											name="productName"> 
											Category : <select
											name="categoryId">
											<option>Select Category</option>
											<c:forEach items="${allCategory}" var="ct">
												<option value="${ct.categoryId}">${ct.categoryName}</option>

											</c:forEach>
										</select> <br> <br>
										<div class="col-md-15">
											Sub-Category : <select name="subcategoryId">
												<option>Select Sub-Category</option>
												<c:forEach items="${allSubCategory}" var="sct">
													<option value="${sct.subcategoryId}">${sct.subCategoryName}</option>

												</c:forEach>
											</select>
										</div>
										<br> <br> <label for="basePrice" class="form-label"></label><br>
										Price:-<input type="text" class="form-control" id="basePrice"
											name="basePrice" placeholder="Base Price"> <label
											for="offerPrice" class="form-label"></label><br>
										Offer-Price:-<input type="text" class="form-control"
											id="offerPrice" name="offerPrice" placeholder="Offer Price">
										<label for="offerPercentage" class="form-label"></label><br>
										Offer-Percentage:-<input type="text" class="form-control"
											id="offerPercentage" name="offerPercentage"
											placeholder="Offer Percentage"> <label
											for="productDetail" class="form-label"></label><br>
										Product Details:-<input type="text" class="form-control"
											id="productDetail" name="productDetail"
											placeholder="Details of Product">

										<div class="mb-3">
											<label class="form-label">Product Picture</label> <input
												type="file" class="form-control" name="productImage">
										</div>
										<!-- <div class="mb-3">
											<label class="form-label">Product Picture</label> <input
												type="file" class="form-control" name="productImage2">
										</div> -->
										

					
										<br>
										<input type="submit" value="Save Product" />

									</form>
								</div>
							</div>

						</div>
					</div>
					<!-- End Reports -->

				</div>
			</div>
			<!-- End Left side columns -->

			<!-- Right side columns -->
			<!-- End Right side columns -->


		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>
