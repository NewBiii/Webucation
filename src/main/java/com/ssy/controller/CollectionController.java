package com.ssy.controller;

import com.ssy.entity.CollectionEntity;
import com.ssy.entity.NoteEntity;
import com.ssy.entity.UserEntity;
import com.ssy.service.ICollectionService;
import com.ssy.service.INoteService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: NewBiii
 * @Date: 2017/4/24
 */
@Controller
@Scope("prototype")
@RequestMapping("/collection")
public class CollectionController {
    @Resource
    private ICollectionService collectionService;
    @Resource
    private INoteService noteService;

    @RequestMapping(value = "/keep",method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView keep(NoteEntity note, HttpSession session) throws Exception {
        ModelAndView mav = new ModelAndView();

        NoteEntity note2 = noteService.getNoteById(note.getNoteid());

        CollectionEntity coll = new CollectionEntity();

        coll.setUserid(((UserEntity)session.getAttribute("user")).getUserid());
        coll.setCourseornoteid(note.getNoteid());
        coll.setIscourseornote(note.getTypee());

        collectionService.insertCollection(coll);

        mav.addObject("note",note2);
        mav.addObject("notename",note2.getNotename());
        mav.addObject("notecontent",note2.getNotecontent());
        mav.addObject("iscoll", true);

        mav.setViewName("/views/noteShow.jsp");
        return mav;
    }

    @RequestMapping(value = "/mynotecoll", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView mynotecoll(UserEntity user, HttpSession session) throws Exception {
        ModelAndView mov = new ModelAndView();

        List<CollectionEntity> collList = collectionService.getAllCollForNote(user.getUserid());

        List<NoteEntity> noteEntity = new ArrayList<>();

        for (CollectionEntity coll:collList) {

            noteEntity.add( noteService.getNoteById(coll.getCourseornoteid()));
        }

        int size = noteEntity.size();

        mov.addObject("collnoteNum", size);
        mov.addObject("collnoteList", noteEntity);

        mov.setViewName("/views/userNoteColl.jsp");
        return mov;
    }


    @RequestMapping(value = "/mycoursecoll", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView mycoursecoll(UserEntity user, HttpSession session) throws Exception {
        ModelAndView mov = new ModelAndView();

        List<CollectionEntity> collList = collectionService.getAllCollForCourse(user.getUserid());

        List<NoteEntity> noteEntity = new ArrayList<>();

        for (CollectionEntity coll:collList) {

            noteEntity.add( noteService.getNoteById(coll.getCourseornoteid()));
        }

        int size = noteEntity.size();

        mov.addObject("collcourseNum", size);
        mov.addObject("collcourseList", noteEntity);

        mov.setViewName("/views/userCourseColl.jsp");
        return mov;
    }

    @RequestMapping(value = "/delcoll",method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView delcoll(NoteEntity note, HttpSession session) throws Exception {
        ModelAndView mav = new ModelAndView();


        collectionService.deleteByUserAndColl(((UserEntity)session.getAttribute("user")).getUserid(),note.getNoteid());

        NoteEntity note2 = noteService.getNoteById(note.getNoteid());

        mav.addObject("note",note2);
        mav.addObject("notename",note2.getNotename());
        mav.addObject("notecontent",note2.getNotecontent());
        mav.addObject("iscoll", false);

        mav.setViewName("/views/noteShow.jsp");
        return mav;
    }


}
