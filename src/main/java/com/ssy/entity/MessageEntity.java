package com.ssy.entity;

import java.util.Date;

public class MessageEntity {
    private Integer messageid;

    private String userid;

    private String username;

    private String userpicture;

    private String touserid;

    private Date messagetime;

    private Integer isread;

    private Integer revertid;

    private Integer courseornoteid;

    private String messagecontent;

    public Integer getMessageid() {
        return messageid;
    }

    public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpicture() {
        return userpicture;
    }

    public void setUserpicture(String userpicture) {
        this.userpicture = userpicture == null ? null : userpicture.trim();
    }

    public String getTouserid() {
        return touserid;
    }

    public void setTouserid(String touserid) {
        this.touserid = touserid == null ? null : touserid.trim();
    }

    public Date getMessagetime() {
        return messagetime;
    }

    public void setMessagetime(Date messagetime) {
        this.messagetime = messagetime;
    }

    public Integer getIsread() {
        return isread;
    }

    public void setIsread(Integer isread) {
        this.isread = isread;
    }

    public Integer getRevertid() {
        return revertid;
    }

    public void setRevertid(Integer revertid) {
        this.revertid = revertid;
    }

    public Integer getCourseornoteid() {
        return courseornoteid;
    }

    public void setCourseornoteid(Integer courseornoteid) {
        this.courseornoteid = courseornoteid;
    }

    public String getMessagecontent() {
        return messagecontent;
    }

    public void setMessagecontent(String messagecontent) {
        this.messagecontent = messagecontent == null ? null : messagecontent.trim();
    }
}