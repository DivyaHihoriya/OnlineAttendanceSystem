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
                <option value="TEACHER">Teacher</option>
                <option value="STUDENT">Student</option>

                </select>
                <button type="submit">Add User</button>

            </form>
            <hr>

            <a href="AdminView">
                <button type="button">View Attendance</button>
            </a>
            <%
                java.util.List<String> list = (java.util.List<String>) request.getAttribute("attendanceList");

                if (list != null && !list.isEmpty()) {
            %>
            <table class="attendance-table">
            <tr>
            <th>Attendance Record</th>
            </tr>
            <%
                    for (String record : list) {
            %>
            <tr>
            <td><%= record %></td>
            </tr>
            <%
                    }
            %>
            </table>
            <%
                } else {
            %>
            <p class="no-record">No attendance records found.</p>

            <%
                }
            %>
        </div>

    </body>
</html>
