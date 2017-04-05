package com.ssy.entity;

import java.util.Date;

public class EvaluationEntity {
    private Long evaluationid;

    private Integer iscourseornote;

    private String courseornoteid;

    private String userid;

    private String evaluationcontent;

    private Date evaluationtime;

    public Long getEvaluationid() {
        return evaluationid;
    }

    public void setEvaluationid(Long evaluationid) {
        this.evaluationid = evaluationid;
    }

    public Integer getIscourseornote() {
        return iscourseornote;
    }

    public void setIscourseornote(Integer iscourseornote) {
        this.iscourseornote = iscourseornote;
    }

    public String getCourseornoteid() {
        return courseornoteid;
    }

    public void setCourseornoteid(String courseornoteid) {
        this.courseornoteid = courseornoteid == null ? null : courseornoteid.trim();
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