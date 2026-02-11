<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Edit Bus</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}

.container {
    width: 50%;
    margin: 50px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

input {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
}

button {
    padding: 8px 20px;
    background: #1976d2;
    color: white;
    border: none;
    border-radius: 5px;
}
</style>

</head>
<body>

<div class="container">

<h2>Edit Bus</h2>

<form action="${pageContext.request.contextPath}/update-bus" method="post">

    <input type="hidden" name="busId" value="${bus.busId}" />

    Bus Name:
    <input type="text" name="busName" value="${bus.busName}" />

    From:
    <input type="text" name="routeFrom" value="${bus.routeFrom}" />

    To:
    <input type="text" name="routeTo" value="${bus.routeTo}" />

    Bus Type:
    <input type="text" name="busType" value="${bus.busType}" />

    Total Seats:
    <input type="number" name="seats" value="${bus.seats}" />

    Available Seats:
    <input type="number" name="availableSeats" value="${bus.availableSeats}" />

    Driver Name:
    <input type="text" name="driverName" value="${bus.driverName}" />

    <button type="submit">Update Bus</button>

</form>

</div>

</body>
</html>
