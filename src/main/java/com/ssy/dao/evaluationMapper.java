package com.ssy.dao;

import com.ssy.pojo.evaluation;

public interface evaluationMapper {
    int deleteByPrimaryKey(String evaluationid);

    int insert(evaluation record);

    int insertSelective(evaluation record);

    evaluation selectByPrimaryKey(String evaluationid);

    int updateByPrimaryKeySelective(evaluation record);

    int updateByPrimaryKey(evaluation record);
}