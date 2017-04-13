package com.ssy.entity;

import java.util.Date;

public class UserEntity {
    private String userid;

    private String username;

    private String userpassword;

    private String userintroduce;

    private Integer sex;

    private String useremail;

    private Integer userphonenum;

    private Date userbirthday;

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

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getUserintroduce() {
        return userintroduce;
    }

    public void setUserintroduce(String userintroduce) {
        this.userintroduce = userintroduce == null ? null : userintroduce.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public Integer getUserphonenum() {
        return userphonenum;
    }

    public void setUserphonenum(Integer userphonenum) {
        this.userphonenum = userphonenum;
    }

    public Date getUserbirthday() {
        return userbirthday;
    }

    public void setUserbirthday(Date userbirthday) {
        this.userbirthday = userbirthday;
    }
}