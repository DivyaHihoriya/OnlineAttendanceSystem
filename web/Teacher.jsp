<%-- 
    Document   : Teacher
    Created on : 7 Mar 2026, 10:05:49 am
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Dashboard</title>
        <link rel="stylesheet" href="CSS/teacher.css">
    </head>
    <body>
        <div class="container">
            <h2>Teacher Dashboard</h2>
            
            <a class="logout" href="LogoutServlet">Logout</a>
            <h3>Mark Attendance</h3>
            <hr>
            <form action="TeacherServlet" method="post">

                <label>Student ID</label>
                <input type="number" name="studentId" placeholder="Enter your studentid" required>

                <label>Subject ID</label>
                <input type="number" name="subjectId" placeholder="Enter your subjectid" required>

                <label>Date</label>
                <input type="date" name="date" required>

                <label>Status</label>

                <select name="status">
                <option value="Present">Present</option>
                <option value="Absent">Absent</option>
                </select>

                <button type="submit">Submit Attendance</button>

            </form>

        </div>
    </body>
</html>
