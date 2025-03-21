<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-Up | MyTiffin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Import Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: url('background_signup_login.jpg');
            background-image: url("background.jpg") ;
            background-size: 100% 210%; /* Adjusts the image to cover the full screen */
   			background-position: center;
    		background-repeat: no-repeat;
        }

        .signup-container {
            max-width: 400px;
            width: 100%;
            max-height:1200px;
            margin-top:400px;
            background: rgba(255, 255, 255, 0.3); /* Glassmorphism Effect */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            text-align: center;
            color: black;
        }

        .signup-container h2 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 15px;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control, .form-select {
            border-radius: 25px;
            padding: 12px;
            font-size: 16px;
        }

        .btn-primary {
            border-radius: 50px;
            font-size: 18px;
            padding: 12px;
            background: rgba(0, 0, 0, 0.7);
            border: none;
            color: white;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background: black;
            color: white;
        }

        .bottom-links {
            margin-top: 10px;
            font-size: 16px;
        }

        .bottom-links a {
            text-decoration: none;
            color: black;
            font-weight: 500;
            transition: 0.3s;
        }

        .bottom-links a:hover {
            color: #555;
            text-decoration: underline;
        }





    </style>
</head>

<body>
    <div class="signup-container">
        <h2>MyTiffin</h2>
        <h2>Sign Up - Create Your Account</h2>

        <form action="saveuser" method="post" enctype="multipart/form-data">
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

            <div class="mb-3">
                <label class="form-label">Gender</label>
                <div class="d-flex justify-content-around">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="female" value="Female" required>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
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
                    <option value="DELIVERY">Delivery</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Profile Picture</label>
                <input type="file" class="form-control" name="profilePic">
            </div>

            <button type="submit" class="btn btn-primary w-100">Register</button>
        </form>

        <div class="bottom-links">
            <a href="login">Already have an account?</a> - OR -  
            <a href="#">Forgot Password?</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
