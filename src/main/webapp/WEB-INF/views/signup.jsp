<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Sign-up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('background_signup_login.jpg.') no-repeat center center fixed;
             background-size:cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-container {
            background: rgba(255, 255, 255, 0.3); /* 30% opacity white */
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Softer shadow */
    width: 100%;
    max-width: 100vh;
    text-align: center;
    backdrop-filter: blur(10px); /* Glassmorphism effect */
    color: black; 
    height:120vh ;
    margin-top: 50vh ;
    
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            
            border: black;
        }
        .btn-primary:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
    <div class="signup-container">
    	<h2 class="text-center mb-4">MyTiffin</h2>
        <h2 class="text-center mb-4">Sign Up - A New Account</h2>
        <form action="saveuser" method="post">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input type="text" class="form-control" id="firstName" name="firstName" required>
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input type="text" class="form-control" id="lastName" name="lastName" required>
            </div>
            <div class="mb-3">
                <label for="dob" class="form-label">Date Of Birth</label>
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="mb-2">
                <label class="form-label">Gender</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
                    <label class="form-check-label" for="male">Male</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="female" value="Female" required>
                    <label class="form-check-label" for="female">Female</label>
                </div>
            </div>
            <div class="mb-3">
                <label for="contactNum" class="form-label">Contact Number</label>
                <input type="tel" class="form-control" id="contactNum" name="contactNum" pattern="[0-9]{10}" required>
            </div>
            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select class="form-select" id="role" name="role" required>
                    <option value="" selected disabled>Select Role</option>
                    <option value="ADMIN">Admin</option>
                    <option value="USER">User</option>
                    <option value="VENDOR">Vendor</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
        </form>
        <br>
        <a href="login" style="color:black; font-size:18px; margin-right:10px;">Already have an account? </a>- OR -  
        <a href="" style="color:black; font-size:18px;">Forgot Password?</a>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
