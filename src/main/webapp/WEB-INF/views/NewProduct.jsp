<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
	<h1>Prodcut</h1>
	<form action="saveproduct" method="post">
	
				Product Name : <input type="text" name="productName"/><br><br> 
				Category : <select name="categoryId">
					<option>Select Category</option>
					<c:forEach items="${allCategory}" var="ct">
							<option value="${ct.categoryId}">${ct.categoryName}</option>
					
					</c:forEach>
				
				</select>
				
				
				Sub-Category : <select name="subcategoryId">
					<option>Select Sub-Category</option>
					<c:forEach items="${allSubCategory}" var="sct">
							<option value="${sct.subcategoryId}">${sct.subCategoryName}</option>
					
					</c:forEach>
				
				
				
				</select>
				
				<br><input type="submit" value="Save Product"/>
				
			</form>
</body>
</html>