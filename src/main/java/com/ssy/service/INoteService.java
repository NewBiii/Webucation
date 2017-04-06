package com.ssy.service;

import com.ssy.entity.NoteEntityWithBLOBs;

/**
 * Created by NewBee on 2017/4/6.
 */

public interface INoteService {

    public NoteEntityWithBLOBs getNoteById(int noteid) ;
    public int insertNote(NoteEntityWithBLOBs note);
    public int deleteNote(NoteEntityWithBLOBs note);
    public int updateNote(NoteEntityWithBLOBs note);
}
