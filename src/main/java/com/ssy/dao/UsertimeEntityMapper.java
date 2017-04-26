package com.ssy.dao;

import com.ssy.entity.UsertimeEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsertimeEntityMapper {

    int deleteByPrimaryKey(Integer logid);

    int insert(UsertimeEntity record);

    int insertSelective(UsertimeEntity record);

    UsertimeEntity selectByPrimaryKey(Integer logid);

    UsertimeEntity selectLastLog(@Param("userid") String userid);

    List<UsertimeEntity> selectByUserid(@Param("userid") String userid);

    int updateByPrimaryKeySelective(UsertimeEntity record);

    int updateByPrimaryKey(UsertimeEntity record);

}