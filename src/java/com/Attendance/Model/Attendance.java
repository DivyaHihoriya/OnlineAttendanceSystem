/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Attendance.Model;

/**
 *
 * @author DIVYA
 */
import java.util.Date;
public class Attendance {
    private int id;
    private int studentid;
    private String subjectname;
    private Date date;
    private String status;

    public Attendance(int id,int studentid,String subjectname, Date date, String status) {
        this.id=id;
        this.studentid = studentid;
        this.subjectname = subjectname;
        this.date = date;
        this.status = status;
    }

    public int getStudentId() {
        return studentid;
    }
    
    public int getId(){
        return id;
    }
    public String getSubjectname() {
        return subjectname;
    }

    public Date getDate() {
        return date;
    }

    public String getStatus() {
        return status;
    }
}
