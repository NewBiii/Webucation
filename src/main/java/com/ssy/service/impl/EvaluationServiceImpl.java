package com.ssy.service.impl;

import com.ssy.dao.EvaluationEntityMapper;
import com.ssy.entity.EvaluationEntity;
import com.ssy.service.IEvaluationService;

import javax.annotation.Resource;

/**
 * Created by NewBee on 2017/4/13.
 */
public class EvaluationServiceImpl implements IEvaluationService {

    @Resource
    private EvaluationEntityMapper evalutionMapper;

    @Override
    public EvaluationEntity getEvaluationById(int evaluationid) {
        return this.evalutionMapper.selectByPrimaryKey(evaluationid);
    }

    @Override
    public int insertCourse(EvaluationEntity evaluation) {
        return this.evalutionMapper.insertSelective(evaluation);
    }

    @Override
    public int deleteCourse(EvaluationEntity evaluation) {
        return this.evalutionMapper.deleteByPrimaryKey(evaluation.getEvaluationid());
    }

    @Override
    public int updateCourse(EvaluationEntity evaluation) {
        return this.evalutionMapper.updateByPrimaryKey(evaluation);
    }
}
