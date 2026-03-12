 <%-- 
    Document   : Teacher
    Created on : 7 Mar 2026, 10:05:49 am
    Author     : DIVYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.Attendance.Model.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Dashboard</title>
        <link rel="stylesheet" href="CSS/teacher.css">
    </head>
    <body>

        <div class="dashboard-container">
        <aside class="sidebar">
            <h3>Teacher Portal</h3>
            <nav>
                <ul>
                    <li><a href="LogoutServlet">Logout</a></li>
                </ul>
            </nav>
        </aside>
        <main class="main-content">
            
                <form action="TeacherServlet" method="post">                       
                    <label>Select Date:</label>
                    <input type="date" name="attendanceDate" required>                       
                    <br><br>                        
                    <label>Select Subject:</label>
                    <select name="subject" required>
                    <option value="">--Select Subject--</option>
                    <option value="Mathematics">Mathematics</option>
                    <option value="DBMS">DataBaseManagmentSystem</option>
                    <option value="AJT">AdvancedJavaTechnology</option>
                    
                    </select>
                <br><br>
                <table class="table">

                    <thead>
                        <tr>
                        <th>Roll No</th>
                        <th>Student Name</th>
                        <th>Action</th>
                        </tr>
                    </thead>
                
                    <tbody>
                <%
                List<Student> students = (List<Student>)request.getAttribute("studentList");

                if(students != null){
                for(Student s : students){
                %>

                <tr>

                <td><%= s.getRollNo() %></td>
                <td><%= s.getName() %></td>

                <td>
                <input type="radio" name="attendance_<%=s.getRollNo()%>" value="P"> P
                <input type="radio" name="attendance_<%=s.getRollNo()%>" value="A"> A
                </td>

                </tr>

                <%
                }
                }
                %>
                </tbody>
                </table>

                <br>

                <button type="submit">Submit Attendance</button>

                </form>
            
        </main>
        </div>
    </body>
</html>
