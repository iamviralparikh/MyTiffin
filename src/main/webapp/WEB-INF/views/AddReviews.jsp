<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>MyTiffin-Online Food Ordering Sysytem</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>



        <!-- Navbar start -->
        <div class="container-fluid fixed-top">
            <div class="container topbar bg-primary d-none d-lg-block">
                <div class="d-flex justify-content-between">
                    
                    <h3><i class="bi bi-bag">Profile</i></h3>
                </div>
            </div>
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="home" class="navbar-brand"><h1 class="text-primary display-6">MyTiffin</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="home" class="nav-item nav-link "><i class="fas fa-home"></i> Home</a>
                            <a href="product" class="nav-item nav-link"><i class="fas fa-shopping-bag"></i> Product</a>
                            <a href="mylistcart" class="nav-item nav-link "><i class="fas fa-shopping-cart"></i> Cart</a>
                            <a href="listmyorder" class="nav-item nav-link "><i class="fas fa-box"></i> Order</a>
                            <a href="listmyreviews" class="nav-item nav-link "><i class="fas fa-star"></i> Review & Rating</a>
                            <a href="mywishlist" class="nav-item nav-link"><i class="fas fa-heart"></i> Wishlist</a>
                            
                        </div>
                        <div class="d-flex m-3 me-0">
                           
                            <!-- <a href="#" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a> -->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-user fa-2x"></i></a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="addusersaddress" class="dropdown-item">Profile</a>
                                    <a href="logout" class="dropdown-item">Log Out</a>
                                </div> 
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->
<div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">Profile</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="home">Home</a></li>
                <li class="breadcrumb-item text-white\"><a href="profile">Profile</a></li>
                
                
            </ol>
        </div>

     <div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6 bg-light rounded p-4 shadow">
            <h2 class="text-center mb-4">Review & Rating</h2>

           <form action="addreview" method="post">
    <!-- Hidden Fields for userId and productId -->
    <input type="hidden" name="userId" value="${user.userId}" />
    <input type="hidden" name="productId" value="${productId}" />
	<h1>Product id ${productId }</h1>
    <!-- Star Rating -->
    <div class="rating-input mb-3">
        <input type="radio" id="star1" name="rating" value="1" required />
        <label for="star1"><i class="fa fa-star"></i></label>
        
        <input type="radio" id="star2" name="rating" value="2" />
        <label for="star2"><i class="fa fa-star"></i></label>
        
        <input type="radio" id="star3" name="rating" value="3" />
        <label for="star3"><i class="fa fa-star"></i></label>
        
        <input type="radio" id="star4" name="rating" value="4" />
        <label for="star4"><i class="fa fa-star"></i></label>
        
        <input type="radio" id="star5" name="rating" value="5" />
        <label for="star5"><i class="fa fa-star"></i></label>
    </div>

    <!-- Review Text -->
    <div class="form-group">
        <textarea name="reviewText" class="form-control" placeholder="Write your review..." required></textarea>
    </div>

    <!-- Submit Button -->
    <div class="form-group mt-3">
        <button type="submit" class="btn btn-primary">Submit Review</button>
    </div>
</form>


            
        </div>
    </div>
</div>
     
<br>
<br>
<br>
<br>
<br>
<br>       

       


        <!-- Copyright Start -->
        <div class="container-fluid copyright bg-dark py-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>MyTiffin</a>, All right reserved.</span>
                    </div>
                    <div class="col-md-6 my-auto text-center text-md-end text-white">
                        <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                        <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                        <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                        Designed By <a class="border-bottom" href="https://www.instagram.com/iamviralparikh/">Viral Parikh</a>Supported By<a class="border-bottom" href="https://grownited.com/">Growwnited Pvt Ltd.</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->



        <!-- Back to Top -->
        <a href="product" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>

