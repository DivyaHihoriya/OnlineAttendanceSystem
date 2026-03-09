<%-- 
    Document   : Student
    Created on : 7 Mar 2026, 10:17:05 am
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.Attendance.Model.Attendance" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Attendance</title>
        <link rel="stylesheet" type="text/css" href="CSS/student.css">
    </head>
    <body>
        <div class="dashboard-container">
        <aside class="sidebar">
            <h3>Student Portal</h3>
            <nav>
                <ul>
                    <li><a href="StudentServlet">My Attendance</a></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                </ul>
            </nav>
        </aside>
        <main class="main-content">
            <h1>Your Attendance Summary</h1>
            
            <table>
                <thead>
                    <tr><th>ID</th><th>Student ID</th><th>Subject name</th><th>Date</th><th>Status</th></tr>
                </thead>
                <tbody>
                    <%
                        List<Attendance> list = (List<Attendance>) request.getAttribute("attendanceListstd");

                        if (list != null && !list.isEmpty()) {
                            for (Attendance record : list) {
                    %>
                    <tr>
                        <td><%= record.getId() %></td>
                        <td><%= record.getStudentId() %></td>
                        <td><%= record.getSubjectname() %></td>
                        <td><%= record.getDate() %></td>
                        <td><%= record.getStatus() %></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </tbody>
            </table>
        </main>
        </div>
    </body>
</html>
