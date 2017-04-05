package com.ssy.dao;

import com.ssy.entity.MessageEntity;
import com.ssy.entity.MessageEntityWithBLOBs;

public interface MessageEntityMapper {
    int deleteByPrimaryKey(Long messageid);

    int insert(MessageEntityWithBLOBs record);

    int insertSelective(MessageEntityWithBLOBs record);

    MessageEntityWithBLOBs selectByPrimaryKey(Long messageid);

    int updateByPrimaryKeySelective(MessageEntityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MessageEntityWithBLOBs record);

    int updateByPrimaryKey(MessageEntity record);
}