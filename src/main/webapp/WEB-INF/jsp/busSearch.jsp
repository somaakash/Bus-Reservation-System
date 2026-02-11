<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Search Bus</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f4f6f8;
}

/* Navbar */
.navbar {
    background: #1f2933;
    color: white;
    padding: 15px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.navbar a {
    color: white;
    text-decoration: none;
    margin-left: 20px;
    font-weight: bold;
}

/* Container */
.container {
    width: 500px;
    margin: 80px auto;
    background: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 25px;
}

/* Form */
label {
    font-weight: bold;
    display: block;
    margin-top: 15px;
}

input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

/* Button */
button {
    width: 100%;
    margin-top: 25px;
    padding: 12px;
    background: #1976d2;
    color: white;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
button:hover {
    background: #0d47a1;
}

/* Footer */
.footer {
    text-align: center;
    margin-top: 40px;
    padding: 15px;
    background: #1f2933;
    color: white;
}
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div><b>🚌 Bus Reservation System</b></div>
    <div>
        <a href="${pageContext.request.contextPath}/user-dashboard">Dashboard</a>
        <a href="${pageContext.request.contextPath}/my-reservations">My Reservations</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>

<!-- SEARCH FORM -->
<div class="container">
    <h2>Search Buses</h2>

    <form action="${pageContext.request.contextPath}/search-buses" method="get">

        <label>From</label>
        <input type="text" name="from" placeholder="Enter source city" required>

        <label>To</label>
        <input type="text" name="to" placeholder="Enter destination city" required>

        <button type="submit">🔍 Search Buses</button>

    </form>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 Bus Reservation System
</div>

</body>
</html>
