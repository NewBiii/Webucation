package com.ssy.dao;

import com.ssy.pojo.user;

public interface userMapper {
    int deleteByPrimaryKey(String userid);

    int insert(user record);

    int insertSelective(user record);

    user selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);
}