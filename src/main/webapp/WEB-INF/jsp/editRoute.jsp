<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit Route</title>
<style>
body { font-family: Arial; background:#f4f6f8; }
.container {
    width: 400px;
    margin: 60px auto;
    background: white;
    padding: 25px;
    border-radius: 8px;
}
input, button {
    width: 100%;
    padding: 8px;
    margin: 8px 0;
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
    <h2>Edit Route</h2>

    <form action="${pageContext.request.contextPath}/update-route" method="post">

        <!-- VERY IMPORTANT: hidden ID -->
        <input type="hidden" name="routeId" value="${route.routeId}" />

        <input type="text" name="routeFrom"
               value="${route.routeFrom}" placeholder="From" required />

        <input type="text" name="routeTo"
               value="${route.routeTo}" placeholder="To" required />

        <input type="number" name="distance"
               value="${route.distance}" placeholder="Distance" required />

        <button type="submit">Update Route</button>
    </form>
</div>
</body>
</html>
