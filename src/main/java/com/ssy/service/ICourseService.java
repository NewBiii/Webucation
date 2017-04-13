package com.ssy.service;


import com.ssy.entity.CourseEntityWithBLOBs;

/**
 * Created by NewBee on 2017/4/13.
 */
public interface ICourseService {

    public CourseEntityWithBLOBs getCourseById(int courseid) ;
    public int insertCourse(CourseEntityWithBLOBs course);
    public int deleteCourse(CourseEntityWithBLOBs course);
    public int updateCourse(CourseEntityWithBLOBs course);
}
