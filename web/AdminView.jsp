<%-- 
    Document   : AdminView
    Created on : 8 Mar 2026, 8:39:10 pm
    Author     : DIVYA
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.Attendance.Model.Attendance" %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/Admin.css">
        <title>Admin View</title>
    </head>
    <body>
    <div class="dashboard-container">
        <aside class="sidebar">
            <h3>Admin Panel</h3>
            <nav>
                <ul>
                    <li><a href="AdminDashboard.jsp">Admin Dashboard</a></li>
                    <li><a href="Admin.jsp">Add User</a></li>
                    <li><a href="AdminView.jsp">View Attendance</a></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                </ul>
            </nav>
        </aside>
        <main class="main-content">

            <h1>All Students Attendance Summary</h1>
            
            <table>
                <thead>
                    <tr><th>ID</th><th>Student ID</th><th>Subject name</th><th>Date</th><th>Status</th></tr>
                </thead>
                <tbody>
                    <%
                        List<Attendance> list = (List<Attendance>) request.getAttribute("attendanceList");

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
