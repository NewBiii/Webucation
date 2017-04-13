package com.ssy.service.impl;

import com.ssy.dao.CTspecialityEntityMapper;
import com.ssy.entity.CTspecialityEntity;
import com.ssy.service.CTspecialityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by NewBee on 2017/4/13.
 */
@Service("CTspecialityService")
public class CTspecialityImpl implements CTspecialityService{

    @Resource
    private CTspecialityEntityMapper CTspecialityMapper;

    @Override
    public CTspecialityEntity getNameByMajor(int major) {
        return this.CTspecialityMapper.selectByPrimaryKey(major);
    }
}
