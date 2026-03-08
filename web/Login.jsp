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
                <div class="role-container">
                   
                    <label class="role-title">Select Role</label>
                    <br>
                    <div class="roles">
                        <label class="role-option">
                            <input type="radio" name="role" value="ADMIN" required> Admin
                        </label>
                        <label class="role-option">
                             <input type="radio" name="role" value="TEACHER"> Teacher
                        </label>
                        <label class="role-option">
                            <input type="radio" name="role" value="STUDENT"> Student
                        </label>
                       
                        
                    </div>
                </div>
                <br>
                <label>Email</label>
                <input type="text" name="email" placeholder="Enter your email" required>

                <label>Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>

                <div class="show-password">
                    <input type="checkbox" onclick="togglePassword()"><label>Show Password</label>
                </div>
                
                
                
                <button type="submit">Login</button>
<!--                <p class="signup-link">
                    Don't have an account? <a href="Signup.jsp">Signup</a>
                </p>-->
            </form>

            <p class="error">${error}</p>

        </div>
    </body>
</html>
