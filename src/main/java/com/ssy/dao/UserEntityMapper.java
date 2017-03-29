package com.ssy.dao;

import com.ssy.entity.UserEntity;

import java.util.List;

public interface UserEntityMapper {
    int deleteByPrimaryKey(String userid);

    List<UserEntity> getAllUser(UserEntity record);

    int insert(UserEntity record);

    int insertSelective(UserEntity record);

    UserEntity selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(UserEntity record);

    int updateByPrimaryKey(UserEntity record);
}