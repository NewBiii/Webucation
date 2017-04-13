package com.ssy.entity;

import java.util.Date;

public class MessageEntity {
    private Integer messageid;

    private Integer iscourseornote;

    private Integer courseornoteid;

    private String userid;

    private Date messagetime;

    public Integer getMessageid() {
        return messageid;
    }

    public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public Integer getIscourseornote() {
        return iscourseornote;
    }

    public void setIscourseornote(Integer iscourseornote) {
        this.iscourseornote = iscourseornote;
    }

    public Integer getCourseornoteid() {
        return courseornoteid;
    }

    public void setCourseornoteid(Integer courseornoteid) {
        this.courseornoteid = courseornoteid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Date getMessagetime() {
        return messagetime;
    }

    public void setMessagetime(Date messagetime) {
        this.messagetime = messagetime;
    }
}