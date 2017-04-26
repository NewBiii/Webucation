package com.ssy.service.impl;

import com.ssy.dao.CollectionEntityMapper;
import com.ssy.entity.CollectionEntity;
import com.ssy.service.ICollectionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: NewBiii
 * @Date: 2017/4/24
 */
@Service("collectionService")
public class CollectionServiceImpl implements ICollectionService {

    @Resource
    private CollectionEntityMapper collectionMapper;

    @Override
    public CollectionEntity getCollectionById(int collectionid) {
        return this.collectionMapper.selectByPrimaryKey(collectionid);
    }

    @Override
    public int insertCollection(CollectionEntity collection) {
        return this.collectionMapper.insert(collection);
    }

    @Override
    public int deleteCollection(CollectionEntity collection) {
        return this.collectionMapper.deleteByPrimaryKey(collection.getCollectionid());
    }

    @Override
    public int deleteByUserAndColl(String userid, int noteid) {
        return this.collectionMapper.deleteByUserAndColl(userid,noteid);
    }

    @Override
    public int updateCollection(CollectionEntity collection) {
        return this.collectionMapper.updateByPrimaryKey(collection);
    }

    @Override
    public List<CollectionEntity> getCollByUser(String collection) {
        return this.collectionMapper.getCollByUser(collection);
    }

    @Override
    public List<CollectionEntity> getAllCollForNote(String collection) {
        return this.collectionMapper.getAllCollForNote(collection);
    }

    @Override
    public List<CollectionEntity> getAllCollForCourse(String collection) {
        return this.collectionMapper.getAllCollForCourse(collection);
    }

}
