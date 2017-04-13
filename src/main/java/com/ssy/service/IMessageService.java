package com.ssy.service;

import com.ssy.entity.MessageEntityWithBLOBs;

/**
 * Created by NewBee on 2017/4/13.
 */
public interface IMessageService {

    public MessageEntityWithBLOBs getMessageById(int messageid) ;
    public int insertMessage(MessageEntityWithBLOBs message);
    public int deleteMessage(MessageEntityWithBLOBs message);
    public int updateMessage(MessageEntityWithBLOBs message);
}
