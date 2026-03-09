/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Attendance.Dao;

/**
 *
 * @author DIVYA
 */
import com.Attendance.Model.User;
import java.sql.*;
import java.util.*;
import com.Attendance.Model.Student;
public class UserDao {
    
    public User login(String email, String password,String role){

        User user = null;
        try (Connection con = DBConnection.getConnection()){
            String sql = "SELECT * FROM user WHERE email=? AND password=? AND role=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3,role);
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                //we use Builder design pattern here
                user = new User.Builder()
                        .id(rs.getInt("id"))
                        .name(rs.getString("name"))
                        .email(rs.getString("email"))
                        .role(rs.getString("role"))
                        .build();
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }

    public List<Student> getAllStudents() {

        List<Student> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM user where role='STUDENT'";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int roll = rs.getInt("id");
                String name = rs.getString("name");
                list.add(new Student(roll, name));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public void addUser(String name, String email, String password, String role){
        try (Connection con = DBConnection.getConnection()){
            String sql = "INSERT INTO user(name,email,password,role) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, role);

            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

