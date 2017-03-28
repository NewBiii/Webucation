package com.ssy.dao;

import com.ssy.pojo.note;

public interface noteMapper {
    int deleteByPrimaryKey(String noteid);

    int insert(note record);

    int insertSelective(note record);

    note selectByPrimaryKey(String noteid);

    int updateByPrimaryKeySelective(note record);

    int updateByPrimaryKeyWithBLOBs(note record);

    int updateByPrimaryKey(note record);
}