package com.ssy.dao;

import com.ssy.entity.UserEntity;

import java.util.List;

public interface UserEntityMapper {
	
    List<UserEntity> getAllUser();
	
    int deleteByPrimaryKey(String userid);

    int insert(UserEntity record);

    int insertSelective(UserEntity record);

    UserEntity selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(UserEntity record);

    int updateByPrimaryKey(UserEntity record);
}