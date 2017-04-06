package com.ssy.service.impl;

import com.ssy.dao.NoteEntityMapper;
import com.ssy.entity.NoteEntityWithBLOBs;
import com.ssy.service.INoteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by NewBee on 2017/4/6.
 */
@Service("noteService")
public class NoteServiceImpl implements INoteService{

    @Resource
    private NoteEntityMapper noteMapper;

    @Override
    public NoteEntityWithBLOBs getNoteById(int noteid)  {
        return this.noteMapper.selectByPrimaryKey(noteid);
    }

    @Override
    public int insertNote(NoteEntityWithBLOBs note)  {
        return this.noteMapper.insert(note);
    }


    @Override
    public int deleteNote(NoteEntityWithBLOBs note){
        return this.noteMapper.deleteByPrimaryKey(note.getNoteid());
    }

    @Override
    public int updateNote(NoteEntityWithBLOBs note)
    {
        return this.noteMapper.updateByPrimaryKey(note);
    }


}
