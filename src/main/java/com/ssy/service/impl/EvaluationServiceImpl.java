package com.ssy.service.impl;

import com.ssy.dao.EvaluationEntityMapper;
import com.ssy.entity.EvaluationEntity;
import com.ssy.service.IEvaluationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Author: NewBiii
 * @Date: 2017/4/13
 */
@Service("evalutionService")
public class EvaluationServiceImpl implements IEvaluationService {

    @Resource
    private EvaluationEntityMapper evalutionMapper;

    @Override
    public EvaluationEntity getEvaluationById(int evaluationid) {
        return this.evalutionMapper.selectByPrimaryKey(evaluationid);
    }

    @Override
    public int insertEvalution(EvaluationEntity evaluation) {
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
