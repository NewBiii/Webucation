package com.ssy.entity;

import java.util.Date;

public class UsertimeEntity {
    private String logid;

    private String userid;

    private Date logintime;

    private Date logouttime;

    private Long onlinetime;

    public String getLogid() {
        return logid;
    }

    public void setLogid(String logid) {
        this.logid = logid == null ? null : logid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public Date getLogouttime() {
        return logouttime;
    }

    public void setLogouttime(Date logouttime) {
        this.logouttime = logouttime;
    }

    public Long getOnlinetime() {
        return onlinetime;
    }

    public void setOnlinetime(Long onlinetime) {
        this.onlinetime = onlinetime;
    }
}