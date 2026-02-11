<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Manage Routes</title>

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
    padding: 8px 16px;
    border-radius: 20px;
    text-decoration: none;
    color: white;
    font-size: 14px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.btn-add {
    background: #28a745;
}

.btn-add:hover {
    background: #1e7e34;
}

.btn-dashboard {
    background: #6c757d;
}

.btn-dashboard:hover {
    background: #5a6268;
}

.btn-edit {
    background: #2563eb;
    padding: 6px 14px;
}

.btn-edit:hover {
    background: #1d4ed8;
}

.btn-delete {
    background: #dc3545;
    padding: 6px 14px;
}

.btn-delete:hover {
    background: #b02a37;
}

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
    overflow: hidden;
    border-radius: 10px;
}

th {
    background: #0f172a;
    color: white;
    padding: 14px;
    font-size: 15px;
}

td {
    padding: 12px;
    border-bottom: 1px solid #e0e0e0;
    text-align: center;
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

    <h2>🛣️ Manage Routes</h2>

    <div class="top-bar">
        <a href="${pageContext.request.contextPath}/add-route" class="btn btn-add">
            ➕ Add New Route
        </a>

        <a href="${pageContext.request.contextPath}/admin-dashboard" class="btn btn-dashboard">
            ⬅ Dashboard
        </a>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>From</th>
                <th>To</th>
                <th>Distance (km)</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="route" items="${routes}">
                <tr>
                    <td>${route.routeId}</td>
                    <td>${route.routeFrom}</td>
                    <td>${route.routeTo}</td>
                    <td>${route.distance}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/edit-route/${route.routeId}"
                           class="btn btn-edit">Edit</a>

                        <a href="${pageContext.request.contextPath}/delete-route/${route.routeId}"
                           class="btn btn-delete"
                           onclick="return confirm('Are you sure you want to delete this route?')">
                           Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>
