<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>All Reservations (Admin)</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}
.container {
    width: 90%;
    margin: 40px auto;
    background: white;
    padding: 25px;
    border-radius: 8px;
}
h2 {
    text-align: center;
    margin-bottom: 20px;
}
table {
    width: 100%;
    border-collapse: collapse;
}
th {
    background: #1976d2;
    color: white;
    padding: 12px;
}
td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}
tr:hover {
    background: #f1f1f1;
}
.dashboard {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 18px;
    background: #555;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}
</style>
</head>

<body>

<div class="container">
    <h2>📋 All Reservations (Admin)</h2>

    <c:if test="${empty reservations}">
        <p style="text-align:center; color:red;">
            No reservations found.
        </p>
    </c:if>

    <c:if test="${not empty reservations}">
        <table>
            <tr>
                <th>Booking ID</th>
                <th>User</th>
                <th>Bus</th>
                <th>Route</th>
                <th>Seats</th>
                <th>Booking Date</th>
                <th>Status</th>
            </tr>

            <c:forEach var="r" items="${reservations}">
                <tr>
                    <td>${r.bookingId}</td>
                    <td>${r.user.username}</td>
                    <td>${r.bus.busName}</td>
                    <td>${r.bus.routeFrom} → ${r.bus.routeTo}</td>
                    <td>${r.seatsBooked}</td>
                    <td>${r.bookingDate}</td>
                    <td>${r.status}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <div style="text-align:center;">
        <a href="${pageContext.request.contextPath}/admin-dashboard"
           class="dashboard">
           ⬅ Back to Dashboard
        </a>
    </div>
</div>

</body>
</html>
