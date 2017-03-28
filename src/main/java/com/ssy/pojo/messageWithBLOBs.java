package com.ssy.pojo;

public class messageWithBLOBs extends message {
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