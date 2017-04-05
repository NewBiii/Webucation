package com.ssy.dao;

import com.ssy.entity.NoteEntity;
import com.ssy.entity.NoteEntityWithBLOBs;

public interface NoteEntityMapper {
    int deleteByPrimaryKey(Long noteid);

    int insert(NoteEntityWithBLOBs record);

    int insertSelective(NoteEntityWithBLOBs record);

    NoteEntityWithBLOBs selectByPrimaryKey(Long noteid);

    int updateByPrimaryKeySelective(NoteEntityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(NoteEntityWithBLOBs record);

    int updateByPrimaryKey(NoteEntity record);
}