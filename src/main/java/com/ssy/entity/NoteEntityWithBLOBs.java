package com.ssy.entity;

public class NoteEntityWithBLOBs extends NoteEntity {
    private String notecontent;

    private byte[] noteoption;

    public String getNotecontent() {
        return notecontent;
    }

    public void setNotecontent(String notecontent) {
        this.notecontent = notecontent == null ? null : notecontent.trim();
    }

    public byte[] getNoteoption() {
        return noteoption;
    }

    public void setNoteoption(byte[] noteoption) {
        this.noteoption = noteoption;
    }
}