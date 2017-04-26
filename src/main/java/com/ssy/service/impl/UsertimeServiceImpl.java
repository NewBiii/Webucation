package com.ssy.service.impl;

import com.ssy.dao.UsertimeEntityMapper;
import com.ssy.entity.UsertimeEntity;
import com.ssy.service.IUsertimeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by NewBee on 2017/4/13.
 */
@Service("usertimeService")
public class UsertimeServiceImpl implements IUsertimeService{

    @Resource
    private UsertimeEntityMapper usertimeMapper;

    @Override
    public UsertimeEntity getUsertimeById(int logid) {
        return this.usertimeMapper.selectByPrimaryKey(logid);
    }

    @Override
    public UsertimeEntity selectLastLog(String userid) {

        return this.usertimeMapper.selectLastLog(userid);
    }


    @Override
    public List<UsertimeEntity> getUsertimeByUser(String userid) {
        return this.usertimeMapper.selectByUserid(userid);
    }

    @Override
    public int insertUsertime(UsertimeEntity usertime) {
        return this.usertimeMapper.insertSelective(usertime);
    }

    @Override
    public int updateUsertime(UsertimeEntity usertime) {
        return this.usertimeMapper.updateByPrimaryKeySelective(usertime);
    }
}
