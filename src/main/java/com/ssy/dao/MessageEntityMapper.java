package com.ssy.dao;

import com.ssy.entity.MessageEntity;
import com.ssy.entity.MessageEntityWithBLOBs;

public interface MessageEntityMapper {
    int deleteByPrimaryKey(Integer messageid);

    int insert(MessageEntityWithBLOBs record);

    int insertSelective(MessageEntityWithBLOBs record);

    MessageEntityWithBLOBs selectByPrimaryKey(Integer messageid);

    int updateByPrimaryKeySelective(MessageEntityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MessageEntityWithBLOBs record);

    int updateByPrimaryKey(MessageEntity record);
}