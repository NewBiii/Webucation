package com.ssy.dao;

import com.ssy.entity.CourseEntity;
import com.ssy.entity.CourseEntityWithBLOBs;

public interface CourseEntityMapper {
    int deleteByPrimaryKey(Long courseid);

    int insert(CourseEntityWithBLOBs record);

    int insertSelective(CourseEntityWithBLOBs record);

    CourseEntityWithBLOBs selectByPrimaryKey(Long courseid);

    int updateByPrimaryKeySelective(CourseEntityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CourseEntityWithBLOBs record);

    int updateByPrimaryKey(CourseEntity record);
}