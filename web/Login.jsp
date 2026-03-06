<%-- 
    Document   : Login
    Created on : 6 Mar 2026, 9:00:09 pm
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance System Login</title>
        <link rel="stylesheet" href="CSS/login.css">
        <script src="Javascript/script.js"></script>
    </head>
    <body>
        <div class="login-container">

            <h2>Attendance Management System</h2>

            <form action="LoginServlet" method="post">

                <label>Email</label>
                <input type="text" name="email" placeholder="Enter your email" required>

                <label>Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>

                <div class="show-password">
                    <input type="checkbox" onclick="togglePassword()"><label>Show Password</label>
                </div>
                
                <button type="submit">Login</button>

            </form>

            <p class="error">${error}</p>

        </div>
    </body>
</html>
