package com.ssy.entity;

public class CTsexEntity {
    private Integer sex;

    private String sexname;

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getSexname() {
        return sexname;
    }

    public void setSexname(String sexname) {
        this.sexname = sexname == null ? null : sexname.trim();
    }
}