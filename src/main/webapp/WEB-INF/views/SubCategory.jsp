<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add SubCategory</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Add New SubCategory</h2>
    <form action="savesubcategories" method="post">
       
        <div class="mb-3">
            <label for="subCategoryName" class="form-label">SubCategory Name</label>
            <input type="text" class="form-control" id="subCategoryName" name="subCategoryName" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Active Status</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="isActive" id="activeYes" value="1" checked>
                <label class="form-check-label" for="activeYes">Active</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="isActive" id="activeNo" value="0">
                <label class="form-check-label" for="activeNo">Inactive</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    