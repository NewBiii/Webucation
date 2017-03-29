package com.ssy.dao;

import com.ssy.entity.UsertimeEntity;

public interface UsertimeEntityMapper {
    int deleteByPrimaryKey(String logid);

    int insert(UsertimeEntity record);

    int insertSelective(UsertimeEntity record);

    UsertimeEntity selectByPrimaryKey(String logid);

    int updateByPrimaryKeySelective(UsertimeEntity record);

    int updateByPrimaryKey(UsertimeEntity record);
}