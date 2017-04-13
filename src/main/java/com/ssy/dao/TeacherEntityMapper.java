package com.ssy.dao;

import com.ssy.entity.TeacherEntity;

import java.util.List;

public interface TeacherEntityMapper {

    List<TeacherEntity> getAllTeacher(TeacherEntity record);

    int deleteByPrimaryKey(String teacherid);

    int insert(TeacherEntity record);

    int insertSelective(TeacherEntity record);

    TeacherEntity selectByPrimaryKey(String teacherid);

    int updateByPrimaryKeySelective(TeacherEntity record);

    int updateByPrimaryKey(TeacherEntity record);
}