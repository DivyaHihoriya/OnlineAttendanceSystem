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
import com.Attendance.Model.Attendance;
public class AttendanceDao {
    
    public void markAttendance(int studentId, String subjectname, String date, String status){

        try (Connection con = DBConnection.getConnection()) {
            String sql = "INSERT INTO attendance(student_id,subject_name,date,status) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, studentId);
            ps.setString(2, subjectname);
            ps.setString(3, date);
            ps.setString(4, status);

            ps.executeUpdate();

        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public List<Attendance> getAttendance(int studentId){
        List<Attendance> list = new ArrayList<>();
        try (Connection con = DBConnection.getConnection()) {

            String sql = "SELECT * FROM attendance WHERE student_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, studentId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Attendance att = new Attendance(
                        rs.getInt("id"),
                        rs.getInt("student_id"),
                        rs.getString("subjectname"),
                        rs.getDate("date"),
                        rs.getString("status")
                );

                list.add(att);
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }
    public List<Attendance> getAllAttendance() {

        List<Attendance> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {

            String sql = "SELECT * FROM attendance";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Attendance att = new Attendance(
                        rs.getInt("id"),
                        rs.getInt("student_id"),
                        rs.getString("subjectname"),
                        rs.getDate("date"),
                        rs.getString("status")
                );

                list.add(att);
            }

        } catch (Exception e) {
            e.printStackTrace();
    }

    return list;
    }
}
