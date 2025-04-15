<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>MyTiffin</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<style>
.rating-input {
	display: flex;
	flex-direction: row-reverse;
	justify-content: flex-start;
}

.rating-input input[type="radio"] {
	display: none;
}

.rating-input label {
	font-size: 24px;
	color: #ccc;
	cursor: pointer;
	transition: color 0.2s;
}

.rating-input input[type="radio"]:checked ~ label i, .rating-input label:hover 
	 ~ label i, .rating-input label:hover i {
	color: #ffc107;
}
</style>


</head>

<body>



	<!-- Navbar start -->
	<div class="container-fluid fixed-top">
		<div class="container topbar bg-primary d-none d-lg-block">
			<div class="d-flex justify-content-between"></div>
		</div>
		<div class="container px-0">
			<nav class="navbar navbar-light bg-white navbar-expand-xl">
				<a href="home" class="navbar-brand">
				<h1 class="text-primary display-6">MyTiffin</h1></a>
				<button class="navbar-toggler py-2 px-3" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars text-primary"></span>
				</button>
				<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
					<div class="navbar-nav mx-auto">
						<a href="home" class="nav-item nav-link "><i class="fas fa-home"></i> Home</a>
                            <a href="product" class="nav-item nav-link active"><i class="fas fa-shopping-bag"></i> Product</a>
                            <a href="mylistcart" class="nav-item nav-link "><i class="fas fa-shopping-cart"></i> Cart</a>
                            <a href="listmyorder" class="nav-item nav-link "><i class="fas fa-box"></i> Order</a>
                            <a href="listmyreviews" class="nav-item nav-link "><i class="fas fa-star"></i> Review & Rating</a>
                            <a href="mywishlist" class="nav-item nav-link "><i class="fas fa-heart"></i> Wishlist</a>
                            </div>
					<div class="d-flex m-3 me-0">
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown"><i class="fas fa-user fa-2x"></i></a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="profile" class="dropdown-item">Profile</a> <a
									href="logout" class="dropdown-item">Log Out</a>
							</div>
						</div>

					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->





	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Product Detail</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="home">Home</a></li>
			<li class="breadcrumb-item"><a href="product">Product</a></li>
			<li class="breadcrumb-item active text-white">Product Details</li>
		</ol>
	</div>
	<!-- Single Page Header End -->
	<br>
	<br>
	<a href="product"
		class="btn btn-outline-secondary rounded-pill px-4 py-2"
		style="margin-left: 100px; margin-top: 50px;"> <i
		class="fa fa-arrow-left me-2"></i> Back to Products
	</a>
	<!-- Single Product Start -->

	<div class="container-fluid py-5 mt-5">
		<div class="container py-5">
			<div class="row g-4 mb-5">
				<div class="col-lg-8 col-xl-9">
					<div class="row g-4">
						<div class="col-lg-6">
							<div class="border rounded">
								<a href="#"> <img src="${viewmyproduct.productImageURL1}"
									class="img-fluid rounded"
									style="max-width: 450px; max-height: 500px;" alt="Image">
								</a>
								
							</div>
						</div>
						<div class="col-lg-6">
							<h4 class="fw-bold mb-3">${viewmyproduct.productName}</h4>
							<p class="mb-3">category</p>
							<h3 class="fw-bold mb-3" style="text-decoration: line-through;">₹${viewmyproduct.basePrice}</h3>
							<h1 class="fw-bold mb-3">₹${viewmyproduct.offerPrice}</h1>
							<h2 class="fw-bold mb-3">${viewmyproduct.offerPercentage}%
								Off</h2>

							<!-- Start of rating -->

							 


							<!-- End of rating -->
							<p class="mb-4">${viewmyproduct.productDetail}</p>
							<div class="input-group quantity mb-5" style="width: 100px;">
								<div class="input-group-btn">
									<button
										class="btn btn-sm btn-minus rounded-circle bg-light border"
										disabled>
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<input type="text"
									class="form-control form-control-sm text-center border-0"
									value="1">
								<div class="input-group-btn">
									<button
										class="btn btn-sm btn-plus rounded-circle bg-light border"
										disabled>
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
							<form action="addtocart" method="post">
								<input type="hidden" name="productId"
									value="${viewmyproduct.productId}">
								<button type="submit"
									class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary">
									<i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
									cart
								</button>
								<a href="addtowishlist?productId=${viewmyproduct.productId}"
									class="btn btn-outline-secondary rounded-pill px-4 py-2"
									style="margin-left: 100px; margin-top: 50px;"> <i
									class="fa fa-heart"></i> Wishlist
								</a> <br>
	
								<!-- <a href="reviewproduct?productId=${viewmyproduct.productId}">Review Product</a>
 -->
						      </div>
							</div>
							
<a href="addreview?productId=${viewmyproduct.productId}"
									class="btn btn-outline-secondary rounded-pill px-4 py-2"
									style="margin-left: 100px; margin-top: 50px;"> <i
									class="fa fa-arrow-left me-2"></i> Add review
								</a>
							
						</div>
						<div class="col-lg-12">

							<div class="tab-content mb-5">
								<div class="tab-pane active" id="nav-about" role="tabpanel"
									aria-labelledby="nav-about-tab">

									<div class="tab-pane" id="nav-mission" role="tabpanel"
										aria-labelledby="nav-mission-tab"></div>

								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-xl-3">
						<div class="row g-4 fruite">
							<div class="col-lg-12"></div>

						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- Single Product End -->


	<!-- Copyright Start -->
	<div class="container-fluid copyright bg-dark py-4">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
					<span class="text-light"><a href="#"><i
							class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All
						right reserved.</span>
				</div>
				<div class="col-md-6 my-auto text-center text-md-end text-white">
					<!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
					<!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
					<!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
					Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML
						Codex</a> Distributed By <a class="border-bottom"
						href="https://themewagon.com">ThemeWagon</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Copyright End -->



	<!-- Back to Top -->
	<a href="#"
		class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
		class="fa fa-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/lightbox/js/lightbox.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>