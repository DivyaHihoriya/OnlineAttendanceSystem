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
    //Builder pattern
    public User(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.email = builder.email;
        this.role = builder.role;
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
    
    //we implement builder pattern here
    public static class Builder {

        private int id;
        private String name;
        private String email;
        private String password;
        private String role;

        public Builder id(int id) {
            this.id = id;
            return this;
        }

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder email(String email) {
            this.email = email;
            return this;
        }

        public Builder password(String password) {
            this.password = password;
            return this;
        }

        public Builder role(String role) {
            this.role = role;
            return this;
        }

        public User build() {
            return new User(this);
        }
    }
}
