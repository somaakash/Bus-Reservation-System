<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results - Bus Reservation</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: 40px auto;
            background: #fff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #263238;
            color: white;
        }

        tr:nth-child(even) {
            background: #f9f9f9;
        }

        .btn {
            padding: 8px 14px;
            border-radius: 4px;
            text-decoration: none;
            color: white;
            font-size: 14px;
        }

        .btn-book {
            background: #1976d2;
        }

        .btn-back {
            background: #555;
            margin-bottom: 15px;
            display: inline-block;
        }

        .no-data {
            text-align: center;
            color: red;
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>

<body>

<div class="container">

    <a href="${pageContext.request.contextPath}/" class="btn btn-back">⬅ Back to Home</a>

    <h2>Available Buses</h2>

    <!-- If buses found -->
    <c:if test="${not empty buses}">
        <table>
            <thead>
                <tr>
                    <th>Bus Name</th>
                    <th>Bus Type</th>
                    <th>Seats</th>
                    <th>Available Seats</th>
                    <th>Price</th>
                    <th>Route</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="bus" items="${buses}">
                    <tr>
                        <td>${bus.busName}</td>
                        <td>${bus.busType}</td>
                        <td>${bus.seats}</td>
                        <td>${bus.availableSeats}</td>
                        <td>₹ ${bus.price}</td>
                        <td>
                            ${bus.route.routeFrom} → ${bus.route.routeTo}
                        </td>
                        <td>
                          
                            <a href="${pageContext.request.contextPath}/book-ticket/${bus.busId}" class="btn btn-book">
    Book Ticket
</a>
                            
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <!-- If no buses found -->
    <c:if test="${empty buses}">
        <div class="no-data">
            ❌ No buses available for selected route
        </div>
    </c:if>

</div>

</body>
</html>
