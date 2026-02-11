<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Booking Successful</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f4f6f8;
}
.container {
    width: 450px;
    margin: 80px auto;
    background: white;
    padding: 30px;
    text-align: center;
    border-radius: 8px;
}
.success {
    color: #2e7d32;
    font-size: 22px;
    font-weight: bold;
    margin-bottom: 15px;
}
.msg {
    margin-bottom: 25px;
}
.btn {
    display: inline-block;
    padding: 12px 18px;
    margin: 8px;
    text-decoration: none;
    border-radius: 5px;
    color: white;
    font-weight: bold;
}
.view {
    background: #1976d2;
}
.dashboard {
    background: #555;
}
</style>
</head>

<body>

<div class="container">

    <div class="success">
        🎉 Ticket Booked Successfully!
    </div>

    <div class="msg">
        Your reservation has been confirmed.
    </div>

    <a href="${pageContext.request.contextPath}/my-reservations"
       class="btn view">
       View My Reservations
    </a>

    <a href="${pageContext.request.contextPath}/user-dashboard"
       class="btn dashboard">
       Back to Dashboard
    </a>

</div>

</body>
</html>
