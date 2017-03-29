package com.ssy.dao;

import com.ssy.entity.EvaluationEntity;

public interface EvaluationEntityMapper {
    int deleteByPrimaryKey(String evaluationid);

    int insert(EvaluationEntity record);

    int insertSelective(EvaluationEntity record);

    EvaluationEntity selectByPrimaryKey(String evaluationid);

    int updateByPrimaryKeySelective(EvaluationEntity record);

    int updateByPrimaryKey(EvaluationEntity record);
}