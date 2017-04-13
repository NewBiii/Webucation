package com.ssy.dao;

import com.ssy.entity.CTspecialityEntity;

public interface CTspecialityEntityMapper {
    int deleteByPrimaryKey(Integer major);

    int insert(CTspecialityEntity record);

    int insertSelective(CTspecialityEntity record);

    CTspecialityEntity selectByPrimaryKey(Integer major);

    int updateByPrimaryKeySelective(CTspecialityEntity record);

    int updateByPrimaryKey(CTspecialityEntity record);
}