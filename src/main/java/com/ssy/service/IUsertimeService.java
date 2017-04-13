package com.ssy.service;

import com.ssy.entity.UsertimeEntity;

import java.util.List;

/**
 * Created by NewBee on 2017/4/13.
 */
public interface IUsertimeService {

    public UsertimeEntity getUsertimeById(int logid) ;

    public List<UsertimeEntity> getUsertimeByUser(String userid) ;

    public int insertUsertime(UsertimeEntity usertime);
}
