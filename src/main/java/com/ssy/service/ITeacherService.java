package com.ssy.service;

import com.ssy.entity.TeacherEntity;

import java.util.List;

/**
 * Created by NewBee on 2017/4/13.
 */
public interface ITeacherService {

    public TeacherEntity login(String teachername, String teacherpassword) ;
    //public int register(TeacherEntity teacher) ;

    public TeacherEntity getTeacherById(String teacherid) ;

    public List<TeacherEntity> getAllTeacher(TeacherEntity teacher) ;
    public int insertTeacher(TeacherEntity teacher);
    public int deleteTeacher(TeacherEntity teacher);
    public int updateTeacher(TeacherEntity teacher);
}
