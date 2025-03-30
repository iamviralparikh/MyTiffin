<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <title>Dashboard</title>
    
    <jsp:include page="AdminCss.jsp" />
    
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
    <jsp:include page="AdminHeader.jsp" />
    <jsp:include page="AdminSidebar.jsp" />

    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">List Product</li>
                </ol>
            </nav>
        </div>

        <div class="card-body">
            <h5 class="card-title">Data Tables</h5>
            <section class="section dashboard">
                <div class="row" style="min-height: 500px;">
                    <div class="col-lg-12">
                        <div class="card">
                               <a href="newproduct" class="btn-link ml-10"><i class="bi bi-plus"></i> Add Product</a>  
    <a href="displayproduct" class="btn-link btn-link-back mr-10"><i class="bi bi-arrow-left"></i> Back</a>
	<br>
	<br>
                            <table id="myTable" class="table datatable datatable-table table-hover" id="myTable">
                                <thead>
                                    <tr>
                                        <th>Product Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${ListProduct}" var="lp">
                                        <tr>
                                            <td>${lp.productName}</td>
                                            <td>
                                                <a href="viewproduct?productId=${lp.productId}" class="btn btn-sm btn-info">View</a>
                                                <a href="editproduct?productId=${lp.productId}" class="btn btn-sm btn-warning">Edit</a>
                                                <a href="deleteproduct?productId=${lp.productId}" class="btn btn-sm btn-danger">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable();
        });
    </script>
    
    <jsp:include page="AdminFooter.jsp" />
    <jsp:include page="AdminJs.jsp" />
</body>
</html>
