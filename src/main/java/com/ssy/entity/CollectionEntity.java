package com.ssy.entity;

public class CollectionEntity {

    private Integer collectionid;

    private String userid;

    private Integer iscourseornote;

    private Integer courseornoteid;

    public Integer getCollectionid() {
        return collectionid;
    }

    public void setCollectionid(Integer collectionid) {
        this.collectionid = collectionid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
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
}