<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>LOGIN-IN</h2>
	  
	  
	  	<form action="saveuser" method="post">
	
		<label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="login">
    </form>
	
	<br></br>
	<a href="Signup">Click the link for Sign-up.... </a>
	
</body>
</html>