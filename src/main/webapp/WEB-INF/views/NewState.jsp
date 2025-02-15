<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>State Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Add State</h2>
        <form action="savestate" method="post">

            <!-- State Name -->
            <div class="mb-3">
                <label for="stateName" class="form-label">State Name</label>
                <input type="text" class="form-control" id="stateName" name="stateName" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary w-100">Save State</button>

        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
