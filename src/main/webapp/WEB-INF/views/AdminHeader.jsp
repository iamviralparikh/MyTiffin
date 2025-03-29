<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.bi-list::before {
    content: "\f479";
}
        body {

            margin-right: 50px;
            font-family: Arial, sans-serif;
        }
         h2 {
            margin-right: 50px;
            text-align: right;
            font-family: Arial, sans-serif;
            display: block;
        }
 

@media (min-width: 1200px) {
    #main, #footer {
        margin-left: 300px;
        color: orange;
    }
}
</style>
<header id="header" class="header fixed-top d-flex align-items-center" style="background-color: #FF5F15;">

    <div class="d-flex align-items-center justify-content-between">
      <a href="admindashboard" class="logo d-flex align-items-center">
        <img src="assets/img/MyTiffin-LOGO.png" alt="">
        <span class="d-none d-lg-block">MyTiffin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li>
        
        
         
</head>
<body>

	<h2>Hey! ${user.firstName } ${user.lastName}</h2>
    <h2 id="date"></h2>
    <h2 id="time"></h2>

    <script>
        function updateDateTime() {
            let now = new Date();
            document.getElementById("date").innerText = now.toLocaleDateString();
            document.getElementById("time").innerText = now.toLocaleTimeString();
        }
        setInterval(updateDateTime, 1000);
        updateDateTime(); // Initial call
    </script>
        <!-- End Search Icon-->


        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${user.firstName}</span>
          </a><!-- End Profile Image Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${user.firstName } ${user.lastName}</h6>
              <span>Foodie Lover</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="userprofile">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <!--<li>
              <a class="dropdown-item d-flex align-items-center" href="needhelp">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>-->
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header>
