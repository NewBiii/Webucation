package com.ssy.dao;

import com.ssy.entity.EvaluationEntity;

public interface EvaluationEntityMapper {
    int deleteByPrimaryKey(Long evaluationid);

    int insert(EvaluationEntity record);

    int insertSelective(EvaluationEntity record);

    EvaluationEntity selectByPrimaryKey(Long evaluationid);

    int updateByPrimaryKeySelective(EvaluationEntity record);

    int updateByPrimaryKey(EvaluationEntity record);
}