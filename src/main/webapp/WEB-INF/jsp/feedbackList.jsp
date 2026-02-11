<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Feedback List</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f4f6f8;
}
.container {
    width: 90%;
    margin: 40px auto;
    background: white;
    padding: 20px;
    border-radius: 6px;
}
h2 {
    text-align: center;
    margin-bottom: 20px;
}
table {
    width: 100%;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: center;
}
th {
    background: #1976d2;
    color: white;
}
tr:nth-child(even) {
    background: #f9f9f9;
}
.no-data {
    text-align: center;
    color: red;
    margin-top: 20px;
}
.back {
    text-align: center;
    margin-top: 20px;
}
a {
    text-decoration: none;
    color: #1976d2;
    font-weight: bold;
}
</style>
</head>

<body>

<div class="container">

    <h2>Feedback List</h2>

    <!-- If feedback exists -->
    <c:if test="${not empty feedbacks}">
        <table>
            <tr>
                <th>Feedback ID</th>
                <th>User</th>
                <th>Bus</th>
                <th>Route</th>
                <th>Journey Date</th>
                <th>Feedback</th>
            </tr>

            <c:forEach var="f" items="${feedbacks}">
                <tr>
                    <td>${f.feedbackId}</td>
                    <td>${f.user.username}</td>
                    <td>${f.bus.busName}</td>
                    <td>${f.bus.routeFrom} → ${f.bus.routeTo}</td>
                    <td>${f.journeyDate}</td>
                    <td>${f.feedbackText}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <!-- If no feedback -->
    <c:if test="${empty feedbacks}">
        <p class="no-data">No feedback available</p>
    </c:if>

    <div class="back">
        <a href="${pageContext.request.contextPath}/admin-dashboard">
            ⬅ Back to Admin Dashboard
        </a>
    </div>

</div>

</body>
</html>
