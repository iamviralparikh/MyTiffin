<%@ page languaisege="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List State</title>
</head>
<body>
	<table border=1>
	<tr>
		<th>State Name</th>
	</tr>
	<c:forEach items="${ListState}" var="st" >
	<tr>
		<td>${st.stateName}</td>
	</tr>	
	</c:forEach>
	</table>
	
</body>
</html>