<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Feedback Submitted</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}
.container {
    width: 420px;
    margin: 80px auto;
    background: white;
    padding: 30px;
    border-radius: 8px;
    text-align: center;
}
.success {
    color: #28a745;
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 20px;
}
.btn {
    display: inline-block;
    padding: 12px 24px;
    background: #1976d2;
    color: white;
    text-decoration: none;
    border-radius: 6px;
    font-weight: bold;
}
.btn:hover {
    background: #125aa0;
}
</style>
</head>

<body>

<div class="container">
    <div class="success">
        ✅ Feedback submitted successfully!
    </div>

    <a href="${pageContext.request.contextPath}/user-dashboard"
       class="btn">
       ⬅ Back to Dashboard
    </a>
</div>

</body>
</html>
