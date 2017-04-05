package com.ssy.entity;

public class MessageEntityWithBLOBs extends MessageEntity {
    private String messagecontent;

    private byte[] messageoption;

    public String getMessagecontent() {
        return messagecontent;
    }

    public void setMessagecontent(String messagecontent) {
        this.messagecontent = messagecontent == null ? null : messagecontent.trim();
    }

    public byte[] getMessageoption() {
        return messageoption;
    }

    public void setMessageoption(byte[] messageoption) {
        this.messageoption = messageoption;
    }
}