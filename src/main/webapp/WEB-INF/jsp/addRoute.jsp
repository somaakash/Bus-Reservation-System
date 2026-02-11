<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add New Route</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
        }

        .container {
            width: 500px;
            margin: 80px auto;
            background: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .btn-group {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }

        button {
            padding: 10px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }

        .btn-save {
            background: #28a745;
            color: white;
        }

        .btn-cancel {
            background: #6c757d;
            color: white;
            text-decoration: none;
            display: inline-block;
            padding: 10px 16px;
            border-radius: 5px;
        }
        /* Footer */
        footer {
            background: #1f2933;
            color: white;
            text-align: center;
            padding: 12px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Add New Route</h2>

    <form action="add-route" method="post">

        <label>From</label>
        <input type="text" name="routeFrom" placeholder="Enter source city" required />

        <label>To</label>
        <input type="text" name="routeTo" placeholder="Enter destination city" required />

        <label>Distance (KM)</label>
        <input type="number" name="distance" placeholder="Enter distance" required />

        <div class="btn-group">
            <button type="submit" class="btn-save">Save Route</button>
            <a href="route-list" class="btn-cancel">Back</a>
        </div>

    </form>

</div>
<!-- Footer -->
<footer>
    © 2026 Bus Reservation System 
</footer>
</body>
</html>
