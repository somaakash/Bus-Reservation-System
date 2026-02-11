<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>User Login</title>

<style>
body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #f4f6f8);
}

/* Login Card */
.container {
    width: 400px;
    margin: 100px auto;
    background: white;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
}

/* Title */
h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #0f172a;
}

/* Inputs */
input {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 15px;
}

input:focus {
    outline: none;
    border-color: #6f42c1;
    box-shadow: 0 0 6px rgba(111,66,193,0.4);
}

/* Login Button */
button {
    width: 100%;
    padding: 12px;
    margin-top: 12px;
    background: #6f42c1;
    color: white;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

button:hover {
    background: #5a34a3;
    transform: translateY(-2px);
}

/* Error */
.error {
    color: red;
    text-align: center;
    margin-bottom: 10px;
}

/* Links */
.actions {
    text-align: center;
    margin-top: 20px;
}

.login {
    display: inline-block;
    padding: 8px 18px;
    background-color: #28a745;
    color: white;
    border-radius: 20px;
    font-weight: bold;
    text-decoration: none;
    margin-top: 10px;
}

.login:hover {
    background-color: #1e7e34;
}

.register {
    display: inline-block;
    padding: 8px 18px;
    background-color: #20c997;
    color: white;
    border-radius: 20px;
    font-weight: bold;
    text-decoration: none;
    margin-top: 10px;
}

.register:hover {
    background-color: #17a589;
}
</style>
</head>

<body>

<div class="container">
    <h2>User Login</h2>

    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Login</button>
    </form>

    <div class="actions">
        <a href="${pageContext.request.contextPath}/register" class="register">
            New User? Register
        </a>
        <br/>
        <a href="${pageContext.request.contextPath}/" class="login">
            ⬅ Home
        </a>
    </div>
</div>

</body>
</html>
