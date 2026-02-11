<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Bus List</title>

<style>
body { font-family: Arial; background: #f4f6f8; }
table {
    width: 80%;
    margin: 50px auto;
    border-collapse: collapse;
    background: white;
}
th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}
th {
    background: #1976d2;
    color: white;
}
a {
    color: #1976d2;
    text-decoration: none;
}
</style>
</head>

<body>
<h2 align="center">Available Buses</h2>

<table>
<tr>
    <th>Bus ID</th>
    <th>Bus Number</th>
    <th>Seats</th>
    <th>Action</th>
</tr>

<c:forEach var="bus" items="${buses}">
<tr>
    <td>${bus.busId}</td>
    <td>${bus.busNumber}</td>
    <td>${bus.availableSeats}</td>
    <td>
        <a href="${pageContext.request.contextPath}/book">
            Book
        </a>
    </td>
</tr>
</c:forEach>

</table>
</body>
</html>