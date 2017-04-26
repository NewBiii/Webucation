package com.ssy.service;

import com.ssy.entity.CollectionEntity;

import java.util.List;

/**
 * @Author: NewBiii
 * @Date: 2017/4/24
 */
public interface ICollectionService {

    public CollectionEntity getCollectionById(int collectionid) ;
    public int insertCollection(CollectionEntity collection);
    public int deleteCollection(CollectionEntity collection);

    public int deleteByUserAndColl(String userid,int noteid);

    public int updateCollection(CollectionEntity collection);

    public List<CollectionEntity> getCollByUser(String collection) ;

    public List<CollectionEntity> getAllCollForNote(String collection) ;
    public List<CollectionEntity> getAllCollForCourse(String collection) ;
}
