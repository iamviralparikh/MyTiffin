
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyTiffin | Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('background_signup_login.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .forgot-container {
            background: rgba(255, 255, 255, 0.3);
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 80%;
            max-width: 400px;
            text-align: center;
            backdrop-filter: blur(10px);
            color: black;
        }
        .form-control {
            border-radius: 50px;
        }
        .btn:hover {
            background-color: black;
            border-color: black;
        }
        .btn {
            border-radius: 50px;
        }
    </style>
</head>
<body>
    <div class="forgot-container">
        <h2 class="text-center mb-4">MyTiffin</h2>
        <h2 class="mb-4">Change Password</h2>
        <p>Entered your email to received an OTP.</p>
        <form action="updatepassword" method="post">
            	Email: <input type="text" name="email" value="${user.email}"/><br><br> 
		
		OTP: <input type="text" name="otp"/><br><br> 
		
		New Password: <input type="password" name="password"/><br><br> 
		
		Confirm Password: <input type="password" name="confirmPassword"/><br><br> 
	
		<input type="submit" value="Update Password"/>
	
	</form>
	<div class="mt-3">
            <a href="login" style="color:black; font-size:16px; margin-right:10px;">Back to Login</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

