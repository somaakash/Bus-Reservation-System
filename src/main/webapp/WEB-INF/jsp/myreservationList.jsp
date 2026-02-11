<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>My Reservations</title>

<style>
body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #f4f6f8);
}

/* Card */
.container {
    width: 88%;
    margin: 50px auto;
    background: white;
    padding: 30px;
    border-radius: 14px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #0f172a;
}

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
    border-radius: 10px;
    overflow: hidden;
}

th {
    background: #1976d2;
    color: white;
    padding: 14px;
    font-size: 15px;
}

td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #e0e0e0;
    font-size: 14px;
}

tr:nth-child(even) {
    background: #f8fafc;
}

tr:hover {
    background: #eef2ff;
}

/* Buttons */
.btn {
    padding: 8px 18px;
    text-decoration: none;
    border-radius: 20px;
    color: white;
    font-size: 14px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.cancel {
    background: #dc3545;
}

.cancel:hover {
    background: #b02a37;
}

.dashboard {
    background: #6c757d;
}

.dashboard:hover {
    background: #5a6268;
}

/* Empty state */
.empty {
    text-align: center;
    color: #d32f2f;
    font-weight: 500;
}
</style>
</head>

<body>

<div class="container">

    <h2>📋 My Reservations</h2>

    <c:if test="${empty reservations}">
        <p class="empty">
            ❌ No reservations found
        </p>
    </c:if>

    <c:if test="${not empty reservations}">
        <table>
            <tr>
                <th>Booking ID</th>
                <th>Bus Name</th>
                <th>Bus Type</th>
                <th>Seats</th>
                <th>Booking Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            <c:forEach var="r" items="${reservations}">
                <tr>
                    <td>${r.bookingId}</td>
                    <td>${r.bus.busName}</td>
                    <td>${r.bus.busType}</td>
                    <td>${r.seatsBooked}</td>
                    <td>${r.bookingDate}</td>
                    <td>${r.status}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/cancel-booking/${r.bookingId}"
                           class="btn cancel"
                           onclick="return confirm('Are you sure you want to cancel this booking?')">
                           Cancel
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <div style="text-align:center; margin-top:20px;">
        <a href="${pageContext.request.contextPath}/user-dashboard"
           class="btn dashboard">
           ⬅ Back to Dashboard
        </a>
    </div>

</div>

</body>
</html>
