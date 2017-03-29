package com.ssy.dao;

import com.ssy.entity.NoteEntity;

public interface NoteEntityMapper {
    int deleteByPrimaryKey(String noteid);

    int insert(NoteEntity record);

    int insertSelective(NoteEntity record);

    NoteEntity selectByPrimaryKey(String noteid);

    int updateByPrimaryKeySelective(NoteEntity record);

    int updateByPrimaryKeyWithBLOBs(NoteEntity record);

    int updateByPrimaryKey(NoteEntity record);
}