package com.ssy.dao;

import com.ssy.entity.CTsexEntity;

public interface CTsexEntityMapper {
    int insert(CTsexEntity record);

    int insertSelective(CTsexEntity record);
}