<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bus Reservation System</title>

<style>
body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #f4f6f8);
}

/* ===== NAVBAR ===== */
.navbar {
    background: #0f172a;
    padding: 14px 50px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
}

/* Logo */
.logo {
    color: #ffffff;
    font-size: 22px;
    font-weight: 600;
    letter-spacing: 1px;
}

.logo span {
    color: #38bdf8;
}

/* Menu links */
.navbar a {
    color: #ffffff;
    text-decoration: none;
    margin-left: 18px;
    padding: 8px 16px;
    border-radius: 8px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.navbar a:hover {
    background: #38bdf8;
    color: #0f172a;
}

/* ===== SEARCH SECTION ===== */
.container {
    margin-top: 130px;
    display: flex;
    justify-content: center;
}

.search-box {
    background: rgba(255,255,255,0.95);
    width: 60%;
    padding: 40px;
    border-radius: 14px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.18);
    text-align: center;
}

/* Headings */
.search-box h1 {
    margin-bottom: 10px;
    color: #0f172a;
    font-size: 32px;
}

.search-box p {
    color: #555;
    margin-bottom: 30px;
    font-size: 15px;
}

/* Inputs */
.search-box input {
    width: 34%;
    padding: 13px;
    margin: 10px;
    border-radius: 8px;
    border: 1px solid #cfd8dc;
    font-size: 15px;
    transition: border 0.3s, box-shadow 0.3s;
}

.search-box input:focus {
    outline: none;
    border-color: #38bdf8;
    box-shadow: 0 0 6px rgba(56,189,248,0.6);
}

/* Button */
.search-box button {
    margin-top: 20px;
    padding: 12px 40px;
    background: #2563eb;
    color: white;
    border: none;
    border-radius: 30px;
    font-size: 16px;
    cursor: pointer;
    transition: transform 0.2s, background 0.3s;
}

.search-box button:hover {
    background: #1d4ed8;
    transform: translateY(-2px);
}

/* Footer */
.footer {
    margin-top: 140px;
    background: #0f172a;
    color: white;
    text-align: center;
    padding: 14px;
    font-size: 14px;
}
</style>
</head>

<body>

<!-- ===== NAVBAR ===== -->
<div class="navbar">
    <div class="logo"><span>Bus Reservation System</span></div>
    <div>
        <a href="${pageContext.request.contextPath}/login">User Login</a>
        <a href="${pageContext.request.contextPath}/admin-login">Admin Login</a>
    </div>
</div>

<!-- ===== SEARCH SECTION ===== -->
<div class="container">
    <div class="search-box">
        <h1>Bus Reservation System</h1>
        <p>Find your bus. Book your seat. Travel made easy.</p>

        <form action="${pageContext.request.contextPath}/search-buses" method="get">
            <input type="text" name="routeFrom" placeholder="From" required />
            <input type="text" name="routeTo" placeholder="To" required />
            <br/>
            <button type="submit">Search Buses</button>
        </form>
    </div>
</div>

<!-- ===== FOOTER ===== -->
<!--
<div class="footer">
    © 2026 Bus Reservation System
</div>
-->
</body>
</html>
