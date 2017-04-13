package com.ssy.service;

import com.ssy.entity.EvaluationEntity;

/**
 * Created by NewBee on 2017/4/13.
 */
public interface IEvaluationService {

    public EvaluationEntity getEvaluationById(int evaluationid) ;
    public int insertCourse(EvaluationEntity evaluation);
    public int deleteCourse(EvaluationEntity evaluation);
    public int updateCourse(EvaluationEntity evaluation);
}
