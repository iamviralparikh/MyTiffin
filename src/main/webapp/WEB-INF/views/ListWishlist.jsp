<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
 
 
<title>Dashboard</title>

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
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashborad">Home</a></li>
					<li class="breadcrumb-item active">List User Address</li>
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
										List <span>/ Wishlist</span>
									</h5>
                 <a href="displaywishlist" class="btn-link btn-link-back mr-10"><i class="bi bi-arrow-left"></i> Back</a>
	<br>
	<br><!-- class="table table-bordered border-primary"  --> 
<table border="1" class="table datatable datatable-table table-hover" id="myTable">
        <thead>
            <tr>
                
                <th>Title</th>
                <th>Unit Name</th>
                <th>City</th>
                <th>State</th>
                <th>Street</th>
                <th>Landmark</th>
                <th>Zip Code</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${allUserAdd}" var="usadd" >
                <tr>
                    
                    <td>${usadd.title}</td>
                    <td>${usadd.unitName}</td>
                    <td>${usadd.cityName}</td>
                    <td>${usadd.stateName}</td>
                    <td>${usadd.street}</td>
                    <td>${usadd.landMark}</td>
                    <td>${usadd.zipCode}</td>
                    <td>
                        <a href="viewuseraddress?userAddressId=${usadd.userAddressId}"class="btn btn-sm btn-info"><i class="bi bi-eye"></i>-View</a> 
                        <a href="edituseraddress?userAddressId=${usadd.userAddressId}"class="btn btn-sm btn-warning"><i class="bi bi-pencil"></i>-Edit</a> 
                        <a href="deleteuseraddress?userAddressId=${usadd.userAddressId}" class="btn btn-sm btn-danger" ><i class="bi bi-trash"></i>-Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    

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

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
 
 	<script type="text/javascript">
 
 	$( document ).ready(function() {
 		let table = new DataTable('#myTable');
 	});
 	</script>
	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>
  
