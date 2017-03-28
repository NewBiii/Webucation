package com.ssy.pojo;

import java.util.Date;

public class evaluation {
    private String evaluationid;

    private String courseid;

    private String userid;

    private String evaluationcontent;

    private Date evaluationtime;

    public String getEvaluationid() {
        return evaluationid;
    }

    public void setEvaluationid(String evaluationid) {
        this.evaluationid = evaluationid == null ? null : evaluationid.trim();
    }

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid == null ? null : courseid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getEvaluationcontent() {
        return evaluationcontent;
    }

    public void setEvaluationcontent(String evaluationcontent) {
        this.evaluationcontent = evaluationcontent == null ? null : evaluationcontent.trim();
    }

    public Date getEvaluationtime() {
        return evaluationtime;
    }

    public void setEvaluationtime(Date evaluationtime) {
        this.evaluationtime = evaluationtime;
    }
}