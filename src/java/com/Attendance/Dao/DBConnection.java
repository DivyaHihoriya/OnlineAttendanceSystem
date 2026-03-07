/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Attendance.Dao;

/**
 *
 * @author DIVYA
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/attendance_db?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASS = "D28i12vY06a";

    //we use singolton design pattern here
    public static Connection connection;
    public static Connection getConnection() {
        try {
            if(connection==null || connection.isClosed()){
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection= DriverManager.getConnection(URL, USER, PASS);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
