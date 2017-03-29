package com.ssy.entity;

import java.util.Date;

public class NoteEntity {
    private String noteid;

    private String userid;

    private String notename;

    private Date notetime;

    private String notecontent;

    public String getNoteid() {
        return noteid;
    }

    public void setNoteid(String noteid) {
        this.noteid = noteid == null ? null : noteid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getNotename() {
        return notename;
    }

    public void setNotename(String notename) {
        this.notename = notename == null ? null : notename.trim();
    }

    public Date getNotetime() {
        return notetime;
    }

    public void setNotetime(Date notetime) {
        this.notetime = notetime;
    }

    public String getNotecontent() {
        return notecontent;
    }

    public void setNotecontent(String notecontent) {
        this.notecontent = notecontent == null ? null : notecontent.trim();
    }
}