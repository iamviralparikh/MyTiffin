<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | MyTiffin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
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
            
            background: url('background_signup_login.jpg');
            background-image: url("background.jpg") ;
            background-size: 100% 210%; /* Adjusts the image to cover the full screen */
   			background-position: center;
    		background-repeat: no-repeat;
        }

        .login-container {
            max-width: 400px;
            width: 100%;
            background: rgba(255, 255, 255, 0.3); /* Glassmorphism Effect */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            text-align: center;
            color: black;
        }

        .login-container h2 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 15px;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control {
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
    <div class="login-container">
        <h2>MyTiffin</h2>
        <h2>Login</h2>

        <form action="authenticate" method="post">
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>

        <div class="bottom-links">
            <a href="signup">Create an Account??</a><br>
            <a href="forgetpassword">Forgot Password??</a>
        </div>

        <br>${error}
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
