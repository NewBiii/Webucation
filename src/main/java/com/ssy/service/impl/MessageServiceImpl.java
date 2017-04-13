package com.ssy.service.impl;

import com.ssy.dao.MessageEntityMapper;
import com.ssy.entity.MessageEntityWithBLOBs;
import com.ssy.service.IMessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by NewBee on 2017/4/13.
 */
@Service("messageService")
public class MessageServiceImpl implements IMessageService {

    @Resource
    private MessageEntityMapper messageMapper;


    @Override
    public MessageEntityWithBLOBs getMessageById(int messageid) {
        return this.messageMapper.selectByPrimaryKey(messageid);
    }

    @Override
    public int insertMessage(MessageEntityWithBLOBs message) {
        return this.messageMapper.insert(message);
    }

    @Override
    public int deleteMessage(MessageEntityWithBLOBs message) {
        return this.messageMapper.deleteByPrimaryKey(message.getMessageid());
    }

    @Override
    public int updateMessage(MessageEntityWithBLOBs message) {
        return this.messageMapper.updateByPrimaryKey(message);
    }
}
