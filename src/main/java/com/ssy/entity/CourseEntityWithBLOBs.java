package com.ssy.entity;

public class CourseEntityWithBLOBs extends CourseEntity {
    private String coursecontent;

    private byte[] courseoption;

    public String getCoursecontent() {
        return coursecontent;
    }

    public void setCoursecontent(String coursecontent) {
        this.coursecontent = coursecontent == null ? null : coursecontent.trim();
    }

    public byte[] getCourseoption() {
        return courseoption;
    }

    public void setCourseoption(byte[] courseoption) {
        this.courseoption = courseoption;
    }
}