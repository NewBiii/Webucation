package com.ssy.dao;

import com.ssy.entity.CTspecialityEntity;

public interface CTspecialityEntityMapper {
    int insert(CTspecialityEntity record);

    int insertSelective(CTspecialityEntity record);
}