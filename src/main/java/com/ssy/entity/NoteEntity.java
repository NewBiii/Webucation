package com.ssy.entity;

import java.util.Date;

public class NoteEntity {
    private Long noteid;

    private String userid;

    private String notename;

    private Date notetime;

    private String isshow;

    private Long score5;

    private Long score4;

    private Long score3;

    private Long score2;

    private Long score1;

    public Long getNoteid() {
        return noteid;
    }

    public void setNoteid(Long noteid) {
        this.noteid = noteid;
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

    public String getIsshow() {
        return isshow;
    }

    public void setIsshow(String isshow) {
        this.isshow = isshow == null ? null : isshow.trim();
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