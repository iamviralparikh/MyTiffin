<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>New User's Address</title>


</head>
<body>
	

		

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
										Address <span>/Of User</span>
									</h5>
									

<h2>Add User Address</h2>
<form action="saveuseraddress" method="post">
    <label for="title">Title</label>
    <select id="title" name="title">
        <option value="Home">Home</option>
        <option value="Office">Office</option>
        <option value="Other">Other</option>
    </select>

    <label for="unitName">Unit Name</label>
    <input type="text" id="unitName" name="unitName" required>

    <label for="street">Street</label>
    <input type="text" id="street" name="street" required>

    <label for="landMark">Landmark</label>
    <input type="text" id="landMark" name="landMark">

    <label for="zipCode">Zip Code</label>
    <input type="text" id="zipCode" name="zipCode" required>

    <button type="submit">Add Address</button>
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

	
	<!-- main content end  -->


</body>
</html>