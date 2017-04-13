package com.ssy.service.impl;

import com.ssy.consts.Consts;
import com.ssy.dao.TeacherEntityMapper;
import com.ssy.entity.TeacherEntity;
import com.ssy.service.ITeacherService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by NewBee on 2017/4/13.
 */
@Service("teacherService")
public class TeacherServiceImpl implements ITeacherService {

    @Resource
    private TeacherEntityMapper teacherMapper;

    @Override
    public TeacherEntity login(String teacherid, String teacherpassword)
    {
        int iRet = Consts.RESULT_FAILURE;
        TeacherEntity teacherEntity = this.teacherMapper.selectByPrimaryKey(teacherid);

        if (teacherEntity != null && teacherpassword.equals(teacherEntity.getTeacherpassword()))
        {
            iRet = Consts.RESULT_SUCCESS;
            return teacherEntity;
        }
        return null;
    }

    /*@Override
    public int register(TeacherEntity teacherEntity)
    {
        int iRet = Consts.RESULT_FAILURE;

        TeacherEntity userFromDB = teacherEntity.selectByPrimaryKey(teacherEntity.getUserid());

        if (userFromDB!=null)
        {
            iRet = Consts.RESULT_NOT_UNIQUE;
        }
        else
        {
            iRet = userMapper.insertSelective(userEntity);

            if (iRet>0)
            {
                iRet = Consts.RESULT_SUCCESS;
            }
        }
        return iRet;
    }*/

    @Override
    public TeacherEntity getTeacherById(String teacherid)  {
        return this.teacherMapper.selectByPrimaryKey(teacherid);
    }

    @Override
    public List<TeacherEntity> getAllTeacher(TeacherEntity record)  {
        return this.teacherMapper.getAllTeacher(record);
    }

    @Override
    public int insertTeacher(TeacherEntity teacher) {
        return this.teacherMapper.insert(teacher);
    }

    @Override
    public int deleteTeacher(TeacherEntity teacher){
        return this.teacherMapper.deleteByPrimaryKey(teacher.getTeacherid());
    }

    @Override
    public int updateTeacher(TeacherEntity teacher)
    {
        return this.teacherMapper.updateByPrimaryKey(teacher);
    }
}
