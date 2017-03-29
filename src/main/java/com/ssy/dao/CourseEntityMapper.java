package com.ssy.dao;

import com.ssy.entity.CourseEntity;

public interface CourseEntityMapper {
    int deleteByPrimaryKey(String courseid);

    int insert(CourseEntity record);

    int insertSelective(CourseEntity record);

    CourseEntity selectByPrimaryKey(String courseid);

    int updateByPrimaryKeySelective(CourseEntity record);

    int updateByPrimaryKeyWithBLOBs(CourseEntity record);

    int updateByPrimaryKey(CourseEntity record);
}