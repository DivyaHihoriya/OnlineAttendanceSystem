<%-- 
    Document   : Signup
    Created on : 7 Mar 2026, 3:56:38 pm
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Signup</title>
        <link rel="stylesheet" href="CSS/Login.css">
    </head>
    <body>
        <div class="login-container">

            <h2>Admin Registration</h2>

            <form action="SignupServlet" method="post">

                <label>Name</label>
                <input type="text" name="name" placeholder="Enter your name" required>

                <label>Email</label>
                <input type="text" name="email" placeholder="Enter your email" required>

                <label>Password</label>
                <input type="password" name="password" placeholder="Enter your password" required>

                <button type="submit">Register Admin</button>

            </form>

            <p class="signup-link">
            Already have an account? <a href="Login.jsp">Login</a>
            </p>

        </div>
    </body>
</html>
