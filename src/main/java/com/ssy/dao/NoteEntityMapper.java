package com.ssy.dao;

import com.ssy.entity.NoteEntity;
import com.ssy.entity.NoteEntityWithBLOBs;

public interface NoteEntityMapper {
    int deleteByPrimaryKey(Integer noteid);

    int insert(NoteEntityWithBLOBs record);

    int insertSelective(NoteEntityWithBLOBs record);

    NoteEntityWithBLOBs selectByPrimaryKey(Integer noteid);

    int updateByPrimaryKeySelective(NoteEntityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(NoteEntityWithBLOBs record);

    int updateByPrimaryKey(NoteEntity record);
}