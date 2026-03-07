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

public class UserDao {
    
    public User login(String email, String password){

        User user = null;
        try (Connection con = DBConnection.getConnection()){
            String sql = "SELECT * FROM user WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            
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

