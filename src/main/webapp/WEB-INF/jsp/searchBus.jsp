<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Search Bus</title>

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
    border-radius: 6px;
}
input, button {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
}
button {
    background: #1976d2;
    color: white;
    border: none;
}
</style>
</head>

<body>
<div class="container">
    <h2>Search Buses</h2>

    <form action="${pageContext.request.contextPath}/search-buses" method="get">
        <input type="text" name="routeFrom" placeholder="From" required />
        <input type="text" name="routeTo" placeholder="To" required />
        <button type="submit">Search</button>
    </form>
</div>
</body>
</html>
