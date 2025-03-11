<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link "> <i
				class="bi bi-grid"></i> <span>MENU</span>
		</a></li>
		<!-- End Profile Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-person"></i><span>Profile</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="viewcity"> <i class="bi bi-circle"></i><span>City</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>Area</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>Address</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>Order</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>Setting</span>
				</a></li>
			</ul></li>

           
		<!-- End Components Nav -->


		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-gear"></i><span>Setting</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="addState"> <i class="bi bi-circle"></i><span>Action</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>History</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>Payment</span>
				</a></li>
				<li><a href=""> <i class="bi bi-circle"></i><span>WishList</span>
				</a></li>
			</ul></li>

		
		<!-- End Icons Nav -->

		<!-- <li class="nav-heading">List Tables</li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="listuser"> <i class="bi bi-person"></i><span>Users</span>
		</a></li>
		<!-- End Profile Page Nav -->

		<!-- <li class="nav-item"><a class="nav-link collapsed"
			href="liststate"><i class="bi bi-building-fill"></i> <span>State</span>
		</a></li>
		<!-- End Profile Page Nav -->

	</ul>

</aside>