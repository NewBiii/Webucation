package com.ssy.service.impl;

import com.ssy.dao.CourseEntityMapper;
import com.ssy.entity.CourseEntityWithBLOBs;
import com.ssy.service.ICourseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by NewBee on 2017/4/13.
 */
@Service("courseService")
public class CourseServiceImpl implements ICourseService{

    @Resource
    private CourseEntityMapper courseMapper;

    @Override
    public CourseEntityWithBLOBs getCourseById(int courseid)  {
        return this.courseMapper.selectByPrimaryKey(courseid);
    }

    @Override
    public int insertCourse(CourseEntityWithBLOBs course)  {
        return this.courseMapper.insertSelective(course);
    }


    @Override
    public int deleteCourse(CourseEntityWithBLOBs course){
        return this.courseMapper.deleteByPrimaryKey(course.getCourseid());
    }

    @Override
    public int updateCourse(CourseEntityWithBLOBs course)
    {
        return this.courseMapper.updateByPrimaryKey(course);
    }
}
