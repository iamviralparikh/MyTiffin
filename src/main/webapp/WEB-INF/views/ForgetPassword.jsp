<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <h2 class="mb-4">Forgot Password</h2>
        <p>Enter your email to receive a password reset link.</p>
        <form action="sendotp" method="post">
            <div class="mb-3 text-start">
                <label for="email" class="form-label"></label>
                Enter an Email:-<input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="text-danger mb-3">${error}</div>
            <button type="submit" class="btn btn-primary w-100">Send OTP</button>
        </form>
        <div class="mt-3">
            <a href="login" style="color:black; font-size:16px; margin-right:10px;">Back to Login</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
