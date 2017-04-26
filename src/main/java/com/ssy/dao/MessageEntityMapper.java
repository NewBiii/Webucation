package com.ssy.dao;

import com.ssy.entity.MessageEntity;

public interface MessageEntityMapper {
    int deleteByPrimaryKey(Integer messageid);

    int insert(MessageEntity record);

    int insertSelective(MessageEntity record);

    MessageEntity selectByPrimaryKey(Integer messageid);

    int updateByPrimaryKeySelective(MessageEntity record);

    int updateByPrimaryKeyWithBLOBs(MessageEntity record);

    int updateByPrimaryKey(MessageEntity record);
}