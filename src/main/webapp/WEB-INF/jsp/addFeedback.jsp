<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Add Feedback</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f8;
}
.container {
    width: 450px;
    margin: 60px auto;
    background: white;
    padding: 25px;
    border-radius: 8px;
}
h2 {
    text-align: center;
    margin-bottom: 20px;
}
label {
    font-weight: bold;
    display: block;
    margin-top: 12px;
}
input, select, textarea {
    width: 100%;
    padding: 8px;
    margin-top: 6px;
}
textarea {
    resize: none;
}
button {
    margin-top: 20px;
    width: 100%;
    padding: 12px;
    background: #28a745;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 15px;
    cursor: pointer;
}
</style>
</head>

<body>

<div class="container">

    <h2>✍ Add Feedback</h2>

    <form action="${pageContext.request.contextPath}/save-feedback" method="post">

        <!-- Select Bus -->
        <label>Bus</label>
        <select name="bookingId" required>
            <option value="">-- Select Bus --</option>
            <c:forEach var="b" items="${bookings}">
                <option value="${b.bookingId}">
                    ${b.bus.busName} (${b.bus.routeFrom} → ${b.bus.routeTo})
                </option>
            </c:forEach>
        </select>

        <!-- Journey Date -->
        <label>Journey Date</label>
        <input type="date" name="journeyDate" required />

        <!-- Feedback -->
        <label>Feedback</label>
        <textarea name="feedbackText" rows="4"
                  placeholder="Write your feedback here..." required></textarea>

        <button type="submit">Submit Feedback</button>
    </form>

</div>

</body>
</html>
