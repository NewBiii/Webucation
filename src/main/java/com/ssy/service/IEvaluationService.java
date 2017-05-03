package com.ssy.service;

import com.ssy.entity.EvaluationEntity;

/**
 * @Author: NewBiii
 * @Date: 2017/4/13
 */
public interface IEvaluationService {

    public EvaluationEntity getEvaluationById(int evaluationid) ;
    public int insertEvalution(EvaluationEntity evaluation);
    public int deleteCourse(EvaluationEntity evaluation);
    public int updateCourse(EvaluationEntity evaluation);
}
