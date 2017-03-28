package com.ssy.dao;

import com.ssy.pojo.usertime;

public interface usertimeMapper {
    int deleteByPrimaryKey(String logid);

    int insert(usertime record);

    int insertSelective(usertime record);

    usertime selectByPrimaryKey(String logid);

    int updateByPrimaryKeySelective(usertime record);

    int updateByPrimaryKey(usertime record);
}