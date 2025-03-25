<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<body>
<h2>New City</h2>

			<form action="savecity" method="post">
				CityName : <input type="text" name="cityName"/><br><br> 
				State : <select name="stateId">
					<option>Select State</option>
					<c:forEach items="${allState1}" var="st">
							<option value="${st.stateId}">${s.stateName}</option>
					
					</c:forEach>
				
				
				
				</select>
				<br><input type="submit" value="Save City"/>
				
			</form>
</body>
</html>