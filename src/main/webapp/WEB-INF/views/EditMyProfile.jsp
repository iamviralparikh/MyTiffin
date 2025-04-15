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
    .form-container {
        width: 400px;
        margin: 40px auto;
        padding: 30px;
        border: 1px solid #ccc;
        border-radius: 12px;
        background-color: #f9f9f9;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        font-family: 'Segoe UI', sans-serif;
    }

    .form-container label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        margin-top: 15px;
        color: #333;
    }

    .form-container input[type="text"],
    .form-container input[type="email"],
    .form-container input[type="file"] {
        width: 100%;
        padding: 8px;
        border-radius: 6px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    .form-container img {
        display: block;
        margin-top: 10px;
        margin-bottom: 10px;
        border-radius: 8px;
        border: 1px solid #aaa;
    }

    .form-container button {
        margin-top: 20px;
        background-color: #4CAF50;
        color: white;
        padding: 10px 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
    }

    .form-container button:hover {
        background-color: #45a049;
    }
</style>
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
                            <a href="home" class="nav-item nav-link ">Home</a>
                            <a href="product" class="nav-item nav-link  ">Product</a>
                            <a href="order" class="nav-item nav-link ">Order</a>
                            <!-- <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                    <a href="chackout.html" class="dropdown-item">Chackout</a>
                                    <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                    <a href="404.html" class="dropdown-item">404 Page</a>
                                </div> 
                            </div>-->
                            <a href="cart" class="nav-item nav-link">Cart</a>
                        	
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



<div class="form-container">
    <form action="updateprofile?userId=${user.userId}" method="post" enctype="multipart/form-data">
        <input type="hidden" name="userId" value="${user.userId}" />
    
        <label>First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" required />

        <label>Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}" required />

        <label>Email:</label>
        <input type="email" name="email" value="${user.email}" disabled />

        <label>Phone:</label>
        <input type="text" name="contactNum" value="${user.contactNum}" required />

        <label>Current Profile Picture:</label>
        <c:choose>
            <c:when test="${not empty user.profilePicPath}">
                <img src="${user.profilePicPath}" height="100" width="100" />
            </c:when>
            <c:otherwise>
                <img src="img/default-profile.png" height="100" width="100" style="justify-content: space-between;"/>
            </c:otherwise>
        </c:choose>

        <label>Change Profile Picture:</label>
        <input type="file" name="profilePic" accept="image/*" />

        <button type="submit">Update</button>
    </form>
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