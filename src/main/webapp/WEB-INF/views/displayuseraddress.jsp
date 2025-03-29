<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Dashboard</title>

<jsp:include page="AdminCss.jsp"></jsp:include>
<style>
.btn {
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
        .btn:hover {
            background-color: #e65100; /* Dark Orange */
        }
        
        .btn-linked {
            padding: 8px 12px;
            background-color: orange;
            color: #012970;
            text-decoration: none;
            font-size: 14px;
            text-align: center;
            border-radius: 40px;
        }
        .btn-linked-back:hover {
            background-color: #e65100;
        }
        .ml-10 {
            margin-left: 35px;
        }
        .mr-10 {
            margin-left: 50px;
            margin-right: 950px;
        } 
        
</style>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashborad">Home</a></li>
					<li class="breadcrumb-item active">User's Address</li>
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

							 
								<!-- <div class="card-body">
									<h5 class="card-title">
										Add <span>user</span>
									</h5>
										<a href="edituser" class="btn btn-primary w-100" type="submit" fdprocessedid="ai49e">Add User</a><br>
										</div>
								 -->
								
								<br>
			 <a href="admindashboard" class="btn-linked btn-link-back mr-10"><i class="bi bi-arrow-left"></i> Back</a>
		
				
									
								<div class="card-body">
									<h5 class="card-title">
										Add <span>user's Address</span>
									</h5>
										<a href="addusersaddress" class="btn btn-primary w-100" type="submit" fdprocessedid="ai49e">Add User Address</a><br>
								
								</div>
								<div class="card-body">
									<h5 class="card-title">
										List <span>user's Address</span>
									</h5>
										<a href="listuseraddress" class="btn btn-primary w-100" type="submit" fdprocessedid="ai49e">List User's Address</a><br>
								
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
