<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
			<h1>EDIT-USER</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="">Home</a></li>
					<li class="breadcrumb-item"><a href="">List Users</a></li>
					<li class="breadcrumb-item active">Edit User</li>
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
										Edit <span>/User</span>
									</h5>

					 <form action="updateuser?userId=${user.userId}" method="post" encType = "multipart/form-data">
        <input type="hidden" name="id" value="${user.userId}" />

        <label>First-Name:</label>
        <input type="text" name="firstName" value="${user.firstName}"  /><br><br>
        
        <label>Last-Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"  /><br><br>
        

        <label>Email:</label>
        <input type="email" name="email" value="${user.email}"  disabled/><br><br>

        <label>Phone:</label>
        <input type="text" name="contactNum" value="${user.contactNum}" /><br><br>

		<label>Photo:</label>
		<img src = "${user.profilePicPath}" height="100px" width="100px">
        <input type="file" name="profilePic" value="${user.profilePicPath}" /><br><br>
			
        <button type="submit">Update</button>
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