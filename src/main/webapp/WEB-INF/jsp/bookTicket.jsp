<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Book Ticket</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f4f6f8;
}
.container {
    width: 480px;
    margin: 60px auto;
    background: #ffffff;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}
h2 {
    text-align: center;
    margin-bottom: 20px;
}
label {
    font-weight: bold;
    margin-top: 12px;
    display: block;
}
input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
button {
    margin-top: 20px;
    width: 100%;
    padding: 12px;
    background: #1976d2;
    color: white;
    border: none;
    font-size: 16px;
    border-radius: 4px;
    cursor: pointer;
}
button:hover {
    background: #125aa0;
}
.error {
    color: red;
    text-align: center;
    margin-top: 10px;
}
.info {
    background: #eef3fb;
    padding: 10px;
    border-radius: 4px;
    margin-bottom: 15px;
}
</style>
</head>

<body>

<div class="container">

    <h2>Book Ticket</h2>

    <!-- Bus Details -->
    <div class="info">
        <p><b>Bus Name:</b> ${bus.busName}</p>
        <p><b>Bus Type:</b> ${bus.busType}</p>
        <p><b>Available Seats:</b> ${bus.availableSeats}</p>
        <p><b>Price per Seat:</b> ₹${bus.price}</p>
    </div>

    <!-- Booking Form -->
    <form action="${pageContext.request.contextPath}/confirm-booking" method="post">

        <!-- Hidden bus id -->
        <input type="hidden" name="busId" value="${bus.busId}" />

        <!-- Passenger Name -->
        <label>Passenger Name</label>
        <input type="text" name="passengerName" placeholder="Enter passenger name" required />

        <!-- Age -->
        <label>Age</label>
        <input type="number" name="age" min="1" max="120" required />

        <!-- Journey Date -->
        <label>Journey Date</label>
        <input type="date" name="journeyDate" required />

        <!-- Seats -->
        <label>Number of Seats</label>
        <input type="number"
               name="seatsBooked"
               min="1"
               max="${bus.availableSeats}"
               required />

        <!-- Confirm -->
        <button type="submit">Confirm Booking</button>
    </form>

    <!-- Error message -->
    <div class="error">
        ${error}
    </div>

</div>

</body>
</html>
