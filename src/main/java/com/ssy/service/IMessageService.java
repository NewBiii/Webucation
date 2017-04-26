package com.ssy.service;

import com.ssy.entity.MessageEntity;

/**
 * @Author: NewBiii
 * @Date: 2017/4/13
 */
public interface IMessageService {

    public MessageEntity getMessageById(int messageid) ;
    public int insertMessage(MessageEntity message);
    public int deleteMessage(MessageEntity message);
    public int updateMessage(MessageEntity message);
}
