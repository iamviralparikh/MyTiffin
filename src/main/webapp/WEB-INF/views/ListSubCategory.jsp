<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 	

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
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
				</ol>
			</nav>
		</div>
	<!--	 End Page Title -->

			<div class="card-body">
              	<h5 class="card-title">Data-tables</h5>
              	

              <!-- Table with stripped rows -->
    			<table border="1" class="table table-hover">
					<thead>
                    <tr>
                        <th>Sub Category Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ListSC}" var="sb">
                        <tr>
                            <td>${sb[2]}</td>
                            <td>
                            	<a href="viewsubcategory?subcategoryId=${sb[0]}" class="btn btn-sm btn-info">View</a>
                                <a href="editsubcategory?subcategoryId=${sb[0]}" class="btn btn-sm btn-warning">Edit</a>
                                <a href="deletesubcategory?subcategoryId=${sb[0]}" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
				</table>
    			
              <!-- End Table with stripped rows -->

            </div>


			
	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>