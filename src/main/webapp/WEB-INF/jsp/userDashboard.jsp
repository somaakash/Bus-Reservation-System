<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.demo.model.User" %>
<!DOCTYPE html>
<html>
<head>
<title>User Dashboard</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}
.container {
    width: 400px;
    margin: 80px auto;
    background: white;
    padding: 25px;
    text-align: center;
    border-radius: 8px;
}
a {
    display: block;
    margin: 15px 0;
    padding: 12px;
    background: #1976d2;
    color: white;
    text-decoration: none;
    border-radius: 6px;
}
a:hover {
    background: #0d47a1;
}
.dashboard-btn {
    display: block;
    margin: 10px auto;
    width: 60%;
    padding: 12px;
    background: #28a745;
    color: white;
    text-align: center;
    text-decoration: none;
    border-radius: 6px;
    font-weight: bold;
    font-size: 15px;
}

.dashboard-btn:hover {
    background: #218838;
}

</style>
</head>

<body>
<div class="container">
<%
    User user = (User) session.getAttribute("loggedUser");
%>
    <h2>
    Welcome,
    <%= (user != null ? user.getUsername() : "") %>
</h2>

    <!-- THESE LINKS MUST MATCH CONTROLLER -->
    <a href="${pageContext.request.contextPath}/search-bus">Book Ticket</a>
    <a href="${pageContext.request.contextPath}/my-reservations">My Reservations</a>
    <a href="${pageContext.request.contextPath}/login">Logout</a>
    
    <a href="${pageContext.request.contextPath}/add-feedback"
   class="dashboard-btn">
   ✍ Add Feedback
</a>
</div>
</body>
</html>
