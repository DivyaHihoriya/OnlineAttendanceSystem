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
        <link rel="stylesheet" href="CSS/adminadduser.css">
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

                <div class="form-container">
                    <h3>Add User</h3>
                    <form action="AdminServlet" method="post" class="input-group">
                        <div class="field">
                            <label>Name</label>
                            <input type="text" name="name" placeholder="Enter your name" required>
                        </div>
                        <br>
                        <div class="field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <br>
                        <div class="field">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <br>
                        <div class="field">
                            <label>Role</label>
                            <select name="role">
                                <option value="TEACHER">Teacher</option>
                                <option value="STUDENT">Student</option>
                            </select>
                        </div>
                        <br>
                        <button type="submit">Add User</button>

                    </form>
                    
                </div>
                
                
            </main>
        </div>
                
                
                
                
        

    </body>
</html>
