<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Bus</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}
.container {
    width: 400px;
    margin: 60px auto;
    background: white;
    padding: 25px;
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
.form-control {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
    height: 42px;
    box-sizing: border-box;
}
.btn {
    display:inline-block;
    padding:12px 24px;
    border-radius:6px;
    font-weight:bold;
    text-decoration:none;
    color:white;
}
.btn-primary {
    background:#1976d2;
}


</style>
</head>

<body>
<div class="container">
    <h2>Add Bus</h2>

    <form action="${pageContext.request.contextPath}/add-bus" method="post">
        <input type="text" name="busName" placeholder="Bus Name" required class="form-control"/>
        
			<input type="text" name="routeFrom" required placeholder="From" class="form-control">

	
		<input type="text" name="routeTo" required placeholder="To" class="form-control">
	        
        <input type="text" name="driverName" placeholder="Driver Name" required class="form-control"/>
        <input type="text" name="busType" placeholder="Bus Type" required class="form-control"/>
        <input type="number" name="seats" placeholder="Total Seats" required class="form-control"/>
        <input type="number" name="availableSeats" placeholder="Available Seats" required class="form-control"/>
        <input type="text" name="price" placeholder="price" required class="form-control"/>
        <label>Route</label>
			<select name="route.routeId" class="form-control" required>
			    <option value="">-- Select Route --</option>
			    <c:forEach var="r" items="${routes}">
			        <option value="${r.routeId}">
			            ${r.routeFrom} → ${r.routeTo}
			        </option>
			    </c:forEach>
			</select>
		
        
        <button type="submit">Save Bus</button>
    </form>

    <p align="center">
       <a href="${pageContext.request.contextPath}/bus-list" class="btn btn-primary">
    ⬅ Back to Bus List
</a>

    </p>
</div>
</body>
</html>
