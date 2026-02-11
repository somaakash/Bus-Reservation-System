<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
        }

        /* Top bar */
        .navbar {
            background: #1f2933;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h2 {
            margin: 0;
        }

        .logout {
            background: #dc3545;
            color: white;
            padding: 8px 14px;
            border-radius: 5px;
            text-decoration: none;
        }

        /* Dashboard container */
        .container {
            width: 90%;
            margin: 40px auto;
        }

        .welcome {
            margin-bottom: 30px;
        }

        /* Cards */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            margin-bottom: 15px;
        }

        .card p {
            color: #555;
            margin-bottom: 20px;
        }

        .card a {
            display: inline-block;
            padding: 10px 18px;
            background: #1976d2;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 14px;
        }

        .routes { background: #e3f2fd; }
        .buses { background: #e8f5e9; }
        .feedback { background: #fff3e0; }
        .reservations{ background: #e8f5e9; }

      
    </style>
</head>

<body>

<!-- Top Navbar -->
<div class="navbar">
    <h2>Admin Dashboard</h2>
    <a href="admin-login" class="logout">Logout</a>
</div>

<!-- Main Content -->
<div class="container">

    <div class="welcome">
        <h2>Welcome, Admin 👋</h2>
        <p>Manage routes, buses, and feedback from here.</p>
    </div>

    <div class="card-grid">

        <!-- Manage Routes -->
        <div class="card routes">
            <h3>Manage Routes</h3>
            <p>Add, view, edit, or delete bus routes.</p>
            <a href="route-list">Go to Routes</a>
        </div>

        <!-- Manage Buses -->
        <div class="card buses">
            <h3>Manage Buses</h3>
            <p>Add new buses and manage existing buses.</p>
            <a href="bus-list">Go to Buses</a>
        </div>

        <!-- View Feedback -->
        <div class="card feedback">
            <h3>View Feedback</h3>
            <p>Read feedback given by users.</p>
            <a href="feedback-list">View Feedback</a>
        </div>
         <!-- View  reservations-->
        <div class="card reservations">
            <h3>View Reservations</h3>
            <p>View reservations.</p>
            <a href="${pageContext.request.contextPath}/admin-reservations">View Reservations</a>
        </div>
        

    </div>

</div>



</body>
</html>
