package com.ssy.controller;

import com.ssy.tools.Consts;
import com.ssy.entity.*;
import com.ssy.service.ICollectionService;
import com.ssy.service.IMessageService;
import com.ssy.service.INoteService;
import com.ssy.service.IUserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @Author: NewBiii
 * @Date: 2017/4/6
 */
@Controller
@Scope("prototype")
@RequestMapping("/note")
public class NoteController {

    @Resource
    private INoteService noteService;
    @Resource
    private IUserService userService;
    @Resource
    private ICollectionService collectionService;
    @Resource
    private IMessageService messageService;

    @RequestMapping(value = "/create", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView noteSubmit(NoteEntity note, HttpSession session) throws Exception {

        UserEntity user = (UserEntity) session.getAttribute("user");

        note.setUserid(user.getUserid());


        Date date = new Date();
        note.setNotetime(date);

        note.setIsshow(0);
        note.setTypee(0);

        note.setScore1(0);
        note.setScore2(0);
        note.setScore3(0);
        note.setScore4(0);
        note.setScore5(0);

        int iResult = noteService.insertNote(note);

        ModelAndView mov = new ModelAndView();

        if (iResult == 1) {
            mov.addObject(Consts.OPERATION_MESSAGE, "提交成功。");
        } else {
            mov.addObject(Consts.OPERATION_MESSAGE, "提交失败。");
        }

        mov.setViewName("/views/test.jsp");

        return mov;
    }

    @RequestMapping(value = "/upload", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView upload(NoteEntity note2, HttpSession session) throws Exception {

        ModelAndView mov = new ModelAndView();

        NoteEntity note = (NoteEntity) session.getAttribute("note");

        note.setNotename(note2.getNotename());
        note.setNotecontent(note2.getNotecontent());

        int result = noteService.updateNote(note);

        System.out.println(result);


        mov.setViewName("/views/test.jsp");
        return mov;
    }

    @RequestMapping(value = "/edit", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView edit(NoteEntity note, HttpSession session) throws Exception {

        ModelAndView mov = new ModelAndView();

        NoteEntity note2 = noteService.getNoteById(note.getNoteid());

        mov.addObject("note", note2);
        mov.addObject("notename", note2.getNotename());
        mov.addObject("notecontent", note2.getNotecontent());

        session.setAttribute("note", note2);

        mov.setViewName("/views/noteEdit.jsp");
        return mov;
    }

    @RequestMapping(value = "/noteShow", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView noteShow(NoteEntity note, HttpSession session) throws Exception {

        ModelAndView mov = new ModelAndView();
        boolean isColl = false;

        NoteEntity note2 = noteService.getNoteById(note.getNoteid());

        if (session.getAttribute("user") != null) {
            List<CollectionEntity> collEntity = collectionService.getCollByUser(((UserEntity) session.getAttribute("user")).getUserid());

            for (CollectionEntity coll : collEntity) {

                if (Objects.equals(coll.getCourseornoteid(), note2.getNoteid())) {

                    isColl = true;
                }
            }

            mov.addObject("iscoll", isColl);
        }
        UserEntity user = userService.getUserById(note2.getUserid());

        List<MessageEntity> messagelist = new ArrayList<>();
        messagelist = messageService.selectByNoteId(note2.getNoteid());
       List<Map<MessageEntity,List<MessageEntity>>> messagedate = new ArrayList<>();
        Map<MessageEntity,List<MessageEntity>> messageMap = new HashMap<>();
        for (MessageEntity message : messagelist) {

            List<MessageEntity> revert = new ArrayList<>();
            revert = messageService.selectByRevertId(message.getMessageid());
            messageMap.put(message,revert);
            /*messagedate.add(messageMap);*/
        }

        mov.addObject("note", note2);
        mov.addObject("auther", user);
        mov.addObject("notename", note2.getNotename());
        mov.addObject("notecontent", note2.getNotecontent());
        mov.addObject("message",messageMap);

        session.setAttribute("note", note2);
        session.setAttribute("allmessage", messageMap);

        mov.setViewName("/views/noteShow.jsp");
        return mov;
    }

    @RequestMapping(value = "/mynote", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView mynote(UserEntity user, HttpSession session) throws Exception {
        ModelAndView mov = new ModelAndView();

        List<NoteEntity> noteEntity = new ArrayList<NoteEntity>();

        noteEntity = noteService.getNote1ByUser(user.getUserid());

        int size = noteEntity.size();

        mov.addObject("noteNum", size);
        mov.addObject("noteList", noteEntity);

        mov.setViewName("/views/userNote.jsp");
        return mov;
    }

    @RequestMapping(value = "/mycourse", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView mycourse(UserEntity user, HttpSession session) throws Exception {
        ModelAndView mov = new ModelAndView();

        List<NoteEntity> noteEntity = new ArrayList<NoteEntity>();

        noteEntity = noteService.getNote2ByUser(user.getUserid());

        int size = noteEntity.size();

        mov.addObject("courseNum", size);
        mov.addObject("courseList", noteEntity);

        mov.setViewName("/views/userCourse.jsp");
        return mov;
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView delete(UserEntity user, NoteEntity note, HttpSession session) throws Exception {

        ModelAndView mov = new ModelAndView();

        noteService.deleteNote(note);

        List<NoteEntity> noteEntity = noteService.getNoteByUser(((UserEntity) session.getAttribute("user")).getUserid());

        int size = noteEntity.size();

        mov.addObject("noteNum", size);
        mov.addObject("noteList", noteEntity);

        mov.setViewName("/views/userNote.jsp");
        return mov;
    }


}
