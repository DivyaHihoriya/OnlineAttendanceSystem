/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Attendance.Model;

/**
 *
 * @author DIVYA
 */
public class User {
    private int id;
    private String name;
    private String email;
    private String role;

    public User(){}

    public User(int id, String name, String email, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.role = role;
    }

    public int getId(){ 
        return id; 
    }
    public String getName(){ 
        return name; 
    }
    public String getEmail(){ 
        return email; 
    }
    public String getRole(){ 
        return role; 
    }
    public void setId(int id){ 
        this.id = id; 
    }
    public void setName(String name){ 
        this.name = name; 
    }
    public void setEmail(String email){ 
        this.email = email; 
    }
    public void setRole(String role){ 
        this.role = role; 
    }
}
