package com.ssy.dao;

import com.ssy.entity.TeacherEntity;

public interface TeacherEntityMapper {
    int deleteByPrimaryKey(String teacherid);

    int insert(TeacherEntity record);

    int insertSelective(TeacherEntity record);

    TeacherEntity selectByPrimaryKey(String teacherid);

    int updateByPrimaryKeySelective(TeacherEntity record);

    int updateByPrimaryKey(TeacherEntity record);
}