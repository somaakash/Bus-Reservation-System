<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>

<style>
body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #ffebee, #eceff1);
}

/* Card */
.container {
    width: 400px;
    margin: 100px auto;
    background: white;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #b71c1c;
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
    border-color: #d32f2f;
    box-shadow: 0 0 6px rgba(211,47,47,0.4);
}

/* Login button */
button {
    width: 100%;
    padding: 12px;
    margin-top: 12px;
    background: #d32f2f;
    color: white;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

button:hover {
    background: #b71c1c;
    transform: translateY(-2px);
}

/* Error message */
.error {
    color: red;
    text-align: center;
    margin-bottom: 10px;
}

/* Actions */
.actions {
    text-align: center;
    margin-top: 20px;
}

/* Home button */
.home {
    display: inline-block;
    padding: 8px 20px;
    background-color: #28a745;
    color: white;
    border-radius: 20px;
    font-weight: bold;
    text-decoration: none;
}

.home:hover {
    background-color: #1e7e34;
}
</style>
</head>

<body>

<div class="container">
    <h2>Admin Login</h2>

    <!-- Error message -->
    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/admin-login" method="post">
        <input type="text" name="username" placeholder="Admin Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Login</button>
    </form>

    <div class="actions">
        <a href="${pageContext.request.contextPath}/" class="home">
            ⬅ Home
        </a>
    </div>
</div>

</body>
</html>
