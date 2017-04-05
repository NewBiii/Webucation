package com.ssy.entity;

import java.util.Date;

public class CourseEntity {
    private Long courseid;

    private String teacherid;

    private String coursename;

    private Date coursetime;

    private Long score5;

    private Long score4;

    private Long score3;

    private Long score2;

    private Long score1;

    public Long getCourseid() {
        return courseid;
    }

    public void setCourseid(Long courseid) {
        this.courseid = courseid;
    }

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid == null ? null : teacherid.trim();
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public Date getCoursetime() {
        return coursetime;
    }

    public void setCoursetime(Date coursetime) {
        this.coursetime = coursetime;
    }

    public Long getScore5() {
        return score5;
    }

    public void setScore5(Long score5) {
        this.score5 = score5;
    }

    public Long getScore4() {
        return score4;
    }

    public void setScore4(Long score4) {
        this.score4 = score4;
    }

    public Long getScore3() {
        return score3;
    }

    public void setScore3(Long score3) {
        this.score3 = score3;
    }

    public Long getScore2() {
        return score2;
    }

    public void setScore2(Long score2) {
        this.score2 = score2;
    }

    public Long getScore1() {
        return score1;
    }

    public void setScore1(Long score1) {
        this.score1 = score1;
    }
}