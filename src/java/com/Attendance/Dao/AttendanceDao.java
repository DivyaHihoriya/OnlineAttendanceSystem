/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Attendance.Dao;

/**
 *
 * @author DIVYA
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AttendanceDao {
    
    public void markAttendance(int studentId, int subjectId, String date, String status){

        try (Connection con = DBConnection.getConnection()) {
            String sql = "INSERT INTO attendance(student_id,subject_id,date,status) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, studentId);
            ps.setInt(2, subjectId);
            ps.setString(3, date);
            ps.setString(4, status);

            ps.executeUpdate();

        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public List<String> getAttendance(int studentId){
        List<String> list = new ArrayList<>();
        try (Connection con = DBConnection.getConnection()) {

            String sql = "SELECT * FROM attendance WHERE student_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, studentId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add("Subject ID: " + rs.getInt("subject_id")
                        + " Date: " + rs.getDate("date")
                        + " Status: " + rs.getString("status"));
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }
    public List<String> getAllAttendance() {

        List<String> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {

            String sql = "SELECT * FROM attendance";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                list.add("Student ID: " + rs.getInt("student_id")
                        + " Subject ID: " + rs.getInt("subject_id")
                        + " Date: " + rs.getDate("date")
                        + " Status: " + rs.getString("status"));
            }

        } catch (Exception e) {
            e.printStackTrace();
    }

    return list;
    }
}
