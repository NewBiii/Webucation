package com.ssy.entity;

import java.util.Date;

public class TeacherEntity {
    private String teacherid;

    private String teachername;

    private String teacherpassword;

    private String teacherintroduce;

    private String teachersex;

    private String teacheremail;

    private Integer reacherphonenum;

    private Date teacherbirthday;

    private Integer teacherspeciality;

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid == null ? null : teacherid.trim();
    }

    public String getTeachername() {
        return teachername;
    }

    public void setTeachername(String teachername) {
        this.teachername = teachername == null ? null : teachername.trim();
    }

    public String getTeacherpassword() {
        return teacherpassword;
    }

    public void setTeacherpassword(String teacherpassword) {
        this.teacherpassword = teacherpassword == null ? null : teacherpassword.trim();
    }

    public String getTeacherintroduce() {
        return teacherintroduce;
    }

    public void setTeacherintroduce(String teacherintroduce) {
        this.teacherintroduce = teacherintroduce == null ? null : teacherintroduce.trim();
    }

    public String getTeachersex() {
        return teachersex;
    }

    public void setTeachersex(String teachersex) {
        this.teachersex = teachersex == null ? null : teachersex.trim();
    }

    public String getTeacheremail() {
        return teacheremail;
    }

    public void setTeacheremail(String teacheremail) {
        this.teacheremail = teacheremail == null ? null : teacheremail.trim();
    }

    public Integer getReacherphonenum() {
        return reacherphonenum;
    }

    public void setReacherphonenum(Integer reacherphonenum) {
        this.reacherphonenum = reacherphonenum;
    }

    public Date getTeacherbirthday() {
        return teacherbirthday;
    }

    public void setTeacherbirthday(Date teacherbirthday) {
        this.teacherbirthday = teacherbirthday;
    }

    public Integer getTeacherspeciality() {
        return teacherspeciality;
    }

    public void setTeacherspeciality(Integer teacherspeciality) {
        this.teacherspeciality = teacherspeciality;
    }
}