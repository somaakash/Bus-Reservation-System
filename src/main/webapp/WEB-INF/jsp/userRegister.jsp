<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>User Registration</title>

<style>
body { font-family: Arial; background: #eef2f3; }
.container {
    width: 400px;
    margin: 80px auto;
    background: white;
    padding: 25px;
}
input, button {
    width: 100%;
    padding: 8px;
    margin: 8px 0;
}
button { background: green; color: white; border: none; }
</style>
</head>

<body>
<div class="container">
    <h2>User Registration</h2>

    <form action="${pageContext.request.contextPath}/register" method="post">
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="email" name="email" placeholder="Email" />
        <button type="submit">Register</button>
    </form>

    <p align="center">
        <a href="${pageContext.request.contextPath}/login">Already registered? Login</a>
    </p>
    <p align="center">
    <a href="${pageContext.request.contextPath}/">⬅ Home</a>
</p>
</div>
</body>
</html>