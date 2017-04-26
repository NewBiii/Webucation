package com.ssy.dao;

import com.ssy.entity.NoteEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoteEntityMapper {

    int deleteByPrimaryKey(Integer noteid);

    int insert(NoteEntity record);

    int insertSelective(NoteEntity record);

    NoteEntity selectByPrimaryKey(Integer noteid);

    int updateByPrimaryKeySelective(NoteEntity record);

    int updateByPrimaryKeyWithBLOBs(NoteEntity record);

    List<NoteEntity> getAllNote();

    List<NoteEntity> getNoteByUser(@Param("userid") String userid);


    /**
     * 查找用户编写的笔记
     * */
    List<NoteEntity> getNote1ByUser(@Param("userid") String userid);


    /**
     * 查找用户编写的课程
     * */
    List<NoteEntity> getNote2ByUser(@Param("userid") String userid);
}