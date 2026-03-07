<%-- 
    Document   : Student
    Created on : 7 Mar 2026, 10:17:05 am
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Attendance</title>
        <link rel="stylesheet" href="CSS/student.css">
    </head>
    <body>
        <div class="container">
            <h2>Student Dashboard</h2>
            <a class="logout" href="LogoutServlet">Logout</a>
            <h3>Your Attendance</h3>
            <hr>
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
