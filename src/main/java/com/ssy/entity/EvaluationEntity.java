package com.ssy.entity;

import java.util.Date;

public class EvaluationEntity {
    private Integer evaluationid;

    private Integer iscourseornote;

    private Integer courseornoteid;

    private String userid;

    private String evaluationcontent;

    private Date evaluationtime;

    public Integer getEvaluationid() {
        return evaluationid;
    }

    public void setEvaluationid(Integer evaluationid) {
        this.evaluationid = evaluationid;
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