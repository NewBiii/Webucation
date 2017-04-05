package com.ssy.entity;

import java.util.Date;

public class MessageEntity {
    private Long messageid;

    private Integer iscourseornote;

    private Long courseornoteid;

    private String userid;

    private Date messagetime;

    public Long getMessageid() {
        return messageid;
    }

    public void setMessageid(Long messageid) {
        this.messageid = messageid;
    }

    public Integer getIscourseornote() {
        return iscourseornote;
    }

    public void setIscourseornote(Integer iscourseornote) {
        this.iscourseornote = iscourseornote;
    }

    public Long getCourseornoteid() {
        return courseornoteid;
    }

    public void setCourseornoteid(Long courseornoteid) {
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