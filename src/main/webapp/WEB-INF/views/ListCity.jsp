<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List City</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('background_signup_login.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .table-container {
            background: rgba(255, 255, 255, 0.3); /* Semi-transparent blue */
            backdrop-filter: blur(10px); /* Glass effect */
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.5);
            color: white;
            font-weight: bold;
        }
        th {
            background-color: #0d6efd;
        }
        tr:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>
    <div class="table-container">
        <h2 class="text-center text-white mb-4">List of Cities</h2>
        <table>
            <tr>
                <th>City Name</th>
                <th>State Name </th>
            </tr>
            <c:forEach items="${ListCity}" var="cl">
                <tr>
                    <td>${cl.cityName}</td>
                    <td>${st.stateName}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>