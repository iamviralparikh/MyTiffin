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
    <style>
    .cancelled{
    text-decoration: line-through;
    color: #4C585B;
}
    </style>
    
    </head>

    <body>



        <!-- Navbar start -->
        <div class="container-fluid fixed-top">
            <div class="container topbar bg-primary d-none d-lg-block">
                <div class="d-flex justify-content-between">
                    
                    <h3><i class="bi bi-bag">Product</i></h3>
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
                            <a href="product" class="nav-item nav-link active"><i class="fas fa-shopping-bag"></i> Product</a>
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
                                    <a href="profile" class="dropdown-item">Profile</a>
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
            <h1 class="text-center text-white display-6">Product</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="home">Home</a></li>
                <li class="breadcrumb-item text-white"><a href="product">Product</a></li>
                
            </ol>
        </div>

        <!-- Modal Search Start -->
       <!--  <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-flex align-items-center">
                        <div class="input-group w-75 mx-auto d-flex">
                            <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                            <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- Modal Search End -->


        <!-- Hero Start -->
       <!--  <div class="container-fluid py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-12 col-lg-7">
                        <h4 class="mb-3 text-secondary">100% Pure Veg</h4>
                        <h1 class="mb-5 display-3 text-primary">Organic Veggies , Fruits Foods , Fast Food </h1>
                        <!-- <div class="position-relative mx-auto">
                            <input class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" type="number" placeholder="Search">
                            <button type="submit" class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100" style="top: 0; right: 25%;">Submit Now</button>
                        </div> 
                    </div>
                    <div class="col-md-12 col-lg-5">
                        <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active rounded">
                                    <img src="img/hero-img-1.png" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Fruites</a>
                                </div>
                                <div class="carousel-item rounded">
                                    <img src="img/hero-img-2.jpg" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Vegitables</a>
                                </div>
                                <div class="carousel-item rounded">
                                    <img src="img/fastfood.jpeg" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Fast Food</a>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- Hero End -->

<br>
<br>
<br>
<br>
<br>
<br>       


									<c:forEach items="${ListProUser}" var="lup">
									<div class="row g-4 justify-content-center">
                                   
                                    <div class="col-md-6 col-lg-6 col-xl-4">
                                        <div class="rounded position-relative fruite-item">
                                            <div class="fruite-img">
                                                <img src="${lup.productImageURL1}" class="img-fluid w-100 rounded-top" alt="">
                                            </div>
                                            <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">-</div>
                                            <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                <h4>${lup.productName}</h4>
                                                <p>${lup.productDetail}</p>
                                                <div class="d-flex justify-content-between flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0"><span class="cancelled">₹${lup.basePrice}</span>      ₹${lup.offerPrice}</p>
                                                    <a href="viewmyproduct?productId=${lup.productId}" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-eye me-2 text-primary"></i>View</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                </c:forEach>   
                                    
                                   <br>
                                    
                
                        

        <!-- Fruits Shop Start-->
<!--         <div class="container-fluid fruite py-5">
            <div class="container py-5 ">
                
                    
                        
                    </div>
                     <c:forEach items="${ListProUser}" var="lup">
                       <div class="row g-4">
                       <div class="tab-content">
                            <div id="tab-1" class="tab-pane fade show p-0 active">
                                
                                    <div class="col-lg-12">
                                           
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                           
                                           
                                      
                                            <div class="rounded position-relative fruite-item">
                                          
                                                <div class="fruite-img">
                                                    <img src="${lup.productImageURL1}" class="img-fluid w-100 rounded-top" alt="">
                                                </div>
                                                <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">Vegs</div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>${lup.productName}</h4>
                                                    <p>${lup.productDetail}</p>
                                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                                        <p class="text-dark fs-5 fw-bold mb-0"><span class="cancelled">₹${lup.basePrice}</span>      ₹${lup.offerPrice}</p>
                                                        <a href="viewmyproduct?productId=${lup.productId}" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                                    </div>
                                                </div>
                                                
                                            </div>
                            
                                        </div>
                                                                               
                                 
                                        
                                      </div>
                                </div>
                            </div>
                        </div>
                    </div></c:forEach> 
                    
            </div>
        </div>
        <!-- Fruits Shop End-->

 

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