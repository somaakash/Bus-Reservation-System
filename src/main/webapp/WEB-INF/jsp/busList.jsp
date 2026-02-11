<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Manage Buses</title>

<style>
body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #f4f6f8);
}

/* Card */
.container {
    width: 92%;
    margin: 40px auto;
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

/* Top bar */
.top-bar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

/* Buttons */
.btn {
    padding: 8px 18px;
    border-radius: 20px;
    text-decoration: none;
    color: white;
    font-size: 14px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.btn-dashboard {
    background: #6c757d;
}

.btn-dashboard:hover {
    background: #5a6268;
}

.btn-add {
    background: #28a745;
}

.btn-add:hover {
    background: #1e7e34;
}

.btn-delete {
    background: #dc3545;
}

.btn-delete:hover {
    background: #b02a37;
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
</style>
</head>

<body>

<div class="container">

    <h2>Manage Buses</h2>

    <!-- TOP BUTTONS -->
    <div class="top-bar">
        <a class="btn btn-dashboard"
           href="${pageContext.request.contextPath}/admin-dashboard">
            ⬅ Dashboard
        </a>

        <a class="btn btn-add"
           href="${pageContext.request.contextPath}/add-bus">
            ➕ Add Bus
        </a>
    </div>

    <!-- BUS TABLE -->
    <table>
        <tr>
            <th>Bus ID</th>
            <th>Bus Name</th>
            <th>Driver Name</th>
            <th>From</th>
            <th>To</th>
            <th>Bus Type</th>
            <th>Total Seats</th>
            <th>Available Seats</th>
            <th>Action</th>
        </tr>

        <c:forEach var="bus" items="${buses}">
            <tr>
                <td>${bus.busId}</td>
                <td>${bus.busName}</td>
                <td>${bus.driverName}</td>
                <td>${bus.routeFrom}</td>
                <td>${bus.routeTo}</td>
                <td>${bus.busType}</td>
                <td>${bus.seats}</td>
                <td>${bus.availableSeats}</td>
                <td>
                <a class="btn btn-add"
                       href="${pageContext.request.contextPath}/edit-bus/${bus.busId}">
                        Edit
                    </a>
                    <a class="btn btn-delete"
                       href="${pageContext.request.contextPath}/delete-bus/${bus.busId}"
                       onclick="return confirm('Are you sure you want to delete this bus?')">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
