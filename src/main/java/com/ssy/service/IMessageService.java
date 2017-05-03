package com.ssy.service;

import com.ssy.entity.MessageEntity;

import java.util.List;

/**
 * @Author: NewBiii
 * @Date: 2017/4/13
 */
public interface IMessageService {

    public MessageEntity getMessageById(int messageid) ;
    public int insertMessage(MessageEntity message);
    public int deleteMessage(MessageEntity message);
    public int updateMessage(MessageEntity message);

    public List<MessageEntity> selectByNoteId(int noteid) ;
    public List<MessageEntity> selectByRevertId(int revertid) ;
    public List<MessageEntity> selectByTouserid(int touserid) ;
}
