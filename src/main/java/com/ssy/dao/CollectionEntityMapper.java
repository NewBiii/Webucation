package com.ssy.dao;

import com.ssy.entity.CollectionEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CollectionEntityMapper {

    int deleteByPrimaryKey(Integer collectionid);

    int deleteByUserAndColl(@Param("userid") String userid,@Param("courseornoteId") Integer courseornoteId);

    int insert(CollectionEntity record);

    int insertSelective(CollectionEntity record);

    CollectionEntity selectByPrimaryKey(Integer collectionid);

    int updateByPrimaryKeySelective(CollectionEntity record);

    int updateByPrimaryKey(CollectionEntity record);

    List<CollectionEntity> getCollByUser(@Param("userid") String userid);

    List<CollectionEntity> getAllCollForNote(@Param("userid") String userid);

    List<CollectionEntity> getAllCollForCourse(@Param("userid") String userid);

}