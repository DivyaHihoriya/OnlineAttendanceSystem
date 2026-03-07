<%-- 
    Document   : Admin
    Created on : 6 Mar 2026, 10:08:32 pm
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <link rel="stylesheet" href="CSS/admin.css">
    </head>
    <body>
        <div class="container">
            <h2>Admin Dashboard</h2>

            <a class="logout" href="LogoutServlet">Logout</a>
            <h3>Add User</h3>
            <hr>
            <form action="AdminServlet" method="post">

                <label>Name</label>
                <input type="text" name="name" placeholder="Enter your name" required>

                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email" required>

                <label>Password</label>
                <input type="password" name="password" placeholder="Enter your password" required>

                <label>Role</label>
                <select name="role">
                <option value="ADMIN">Admin</option>
                <option value="TEACHER">Teacher</option>
                <option value="STUDENT">Student</option>

                </select>
                <button type="submit">Add User</button>

            </form>
            <hr>

            <a href="AdminView">View Attendance</a>
            <%
                java.util.List list = (java.util.List) request.getAttribute("attendanceList");

                if (list != null) {
                    for (Object obj : list) {
            %>

            <p class="attendance"><%= obj %></p>

            <%
                    }
                }
            %>
        </div>

    </body>
</html>
