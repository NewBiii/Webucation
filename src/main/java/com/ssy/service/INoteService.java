package com.ssy.service;

import com.ssy.entity.NoteEntity;

import java.util.List;

/**
 * @Author: NewBiii
 * @Date: 2017/4/6
 */

public interface INoteService {

    public NoteEntity getNoteById(int noteid) ;
    public int insertNote(NoteEntity note);
    public int deleteNote(NoteEntity note);
    public int updateNote(NoteEntity note);
    public List<NoteEntity> getAllNote() ;
    public List<NoteEntity> getNoteByUser(String userid) ;
    public List<NoteEntity> getNote1ByUser(String userid) ;
    public List<NoteEntity> getNote2ByUser(String userid) ;

}
