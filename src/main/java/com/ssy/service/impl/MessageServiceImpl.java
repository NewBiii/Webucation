package com.ssy.service.impl;

import com.ssy.dao.MessageEntityMapper;
import com.ssy.entity.MessageEntity;
import com.ssy.service.IMessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Author: NewBiii
 * @Date: 2017/4/13
 */
@Service("messageService")
public class MessageServiceImpl implements IMessageService {

    @Resource
    private MessageEntityMapper messageMapper;


    @Override
    public MessageEntity getMessageById(int messageid) {
        return this.messageMapper.selectByPrimaryKey(messageid);
    }

    @Override
    public int insertMessage(MessageEntity message) {
        return this.messageMapper.insert(message);
    }

    @Override
    public int deleteMessage(MessageEntity message) {
        return this.messageMapper.deleteByPrimaryKey(message.getMessageid());
    }

    @Override
    public int updateMessage(MessageEntity message) {
        return this.messageMapper.updateByPrimaryKey(message);
    }
}
