package com.ssy.dao;

import com.ssy.entity.MessageEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MessageEntityMapper {
    int deleteByPrimaryKey(Integer messageid);

    int insert(MessageEntity record);

    int insertSelective(MessageEntity record);

    MessageEntity selectByPrimaryKey(Integer messageid);

    List<MessageEntity> selectByTouserid(@Param("touserid") Integer touserid);

    List<MessageEntity> selectByNoteId(@Param("courseornoteid") Integer courseornoteid);

    List<MessageEntity> selectByRevertId(@Param("revertid") Integer revertid);

    int updateByPrimaryKeySelective(MessageEntity record);

    int updateByPrimaryKeyWithBLOBs(MessageEntity record);

    int updateByPrimaryKey(MessageEntity record);
}