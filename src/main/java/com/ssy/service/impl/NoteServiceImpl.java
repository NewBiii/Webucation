package com.ssy.service.impl;

import com.ssy.dao.NoteEntityMapper;
import com.ssy.entity.NoteEntity;
import com.ssy.service.INoteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: NewBiii
 * @Date: 2017/4/6
 */
@Service("noteService")
public class NoteServiceImpl implements INoteService{

    @Resource
    private NoteEntityMapper noteMapper;

    @Override
    public NoteEntity getNoteById(int noteid)  {
        return this.noteMapper.selectByPrimaryKey(noteid);
    }

    @Override
    public int insertNote(NoteEntity note)  {
        return this.noteMapper.insert(note);
    }


    @Override
    public int deleteNote(NoteEntity note){
        return this.noteMapper.deleteByPrimaryKey(note.getNoteid());
    }

    @Override
    public int updateNote(NoteEntity note)
    {
        return this.noteMapper.updateByPrimaryKeySelective(note);
    }

    @Override
    public List<NoteEntity> getAllNote() {
        return this.noteMapper.getAllNote();
    }

    @Override
    public List<NoteEntity> getNoteByUser(String userid) {
        return this.noteMapper.getNoteByUser(userid);
    }

    @Override
    public List<NoteEntity> getNote1ByUser(String userid) {
        return this.noteMapper.getNote1ByUser(userid);
    }

    @Override
    public List<NoteEntity> getNote2ByUser(String userid) {
        return this.noteMapper.getNote2ByUser(userid);
    }


}
