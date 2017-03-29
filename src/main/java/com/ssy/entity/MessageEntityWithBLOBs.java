package com.ssy.entity;

public class MessageEntityWithBLOBs extends MessageEntity {
    private String messagecontent;

    private String messageresponse;

    public String getMessagecontent() {
        return messagecontent;
    }

    public void setMessagecontent(String messagecontent) {
        this.messagecontent = messagecontent == null ? null : messagecontent.trim();
    }

    public String getMessageresponse() {
        return messageresponse;
    }

    public void setMessageresponse(String messageresponse) {
        this.messageresponse = messageresponse == null ? null : messageresponse.trim();
    }
}