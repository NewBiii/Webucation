package com.ssy.dao;

import com.ssy.pojo.message;
import com.ssy.pojo.messageWithBLOBs;

public interface messageMapper {
    int deleteByPrimaryKey(String messageid);

    int insert(messageWithBLOBs record);

    int insertSelective(messageWithBLOBs record);

    messageWithBLOBs selectByPrimaryKey(String messageid);

    int updateByPrimaryKeySelective(messageWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(messageWithBLOBs record);

    int updateByPrimaryKey(message record);
}