package com.ssy.controller;

import com.ssy.entity.MessageEntity;
import com.ssy.entity.NoteEntity;
import com.ssy.entity.UserEntity;
import com.ssy.service.IMessageService;
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
 * @Date: 2017/4/27
 */
@Controller
@Scope("prototype")
@RequestMapping("/message")
public class MessageController {
    @Resource
    private IMessageService messageService;

    @RequestMapping(value = "/question",method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView question(MessageEntity message,HttpSession session) throws Exception {
        ModelAndView mav = new ModelAndView();

        UserEntity user = (UserEntity) session.getAttribute("user");
        NoteEntity note = (NoteEntity) session.getAttribute("note");

        MessageEntity message2 = new MessageEntity();

        message2.setUserid(user.getUserid());
        message2.setUsername(user.getUsername());
        message2.setUserpicture(user.getUserpicture());
        message2.setTouserid(note.getUserid());
        message2.setMessagecontent(message.getMessagecontent());
        Date date = new Date();
        message2.setMessagetime(date);
        message2.setIsread(0);
        message2.setRevertid(0);
        message2.setCourseornoteid(note.getNoteid());
        messageService.insertMessage(message2);

        List<MessageEntity> messagelist = new ArrayList<>();
        messagelist = messageService.selectByNoteId(note.getNoteid());
        Map<MessageEntity,List<MessageEntity>> messageMap = new HashMap<>();
        for (MessageEntity mess : messagelist) {

            List<MessageEntity> revert = messageService.selectByRevertId(mess.getMessageid());
            messageMap.put(mess,revert);
        }

        mav.addObject("note",note);
        mav.addObject("notename",note.getNotename());
        mav.addObject("auther", user);
        mav.addObject("notecontent",note.getNotecontent());
        mav.addObject("message",messageMap);


        mav.setViewName("/views/noteShow.jsp");
        return mav;
    }

    @RequestMapping(value = "/revert",method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView revert(MessageEntity message,HttpSession session) throws Exception {
        ModelAndView mav = new ModelAndView();

        UserEntity user = (UserEntity) session.getAttribute("user");
        NoteEntity note = (NoteEntity) session.getAttribute("note");

        MessageEntity message2 = new MessageEntity();

        message2.setUserid(user.getUserid());
        message2.setUsername(user.getUsername());
        message2.setUserpicture(user.getUserpicture());
        message2.setUserid(user.getUserid());
        message2.setTouserid(message.getUserid());
        message2.setMessagecontent(message.getMessagecontent());
        Date date = new Date();
        message2.setMessagetime(date);
        message2.setIsread(0);
        message2.setRevertid(message.getMessageid());
        message2.setCourseornoteid(0);
        messageService.insertMessage(message2);

        mav.addObject("note",note);
        mav.addObject("notename",note.getNotename());
        mav.addObject("notecontent",note.getNotecontent());

        mav.setViewName("/views/noteShow.jsp");
        return mav;
    }


    @RequestMapping(value = "/sendprivate",method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView sendprivate(UserEntity user2,MessageEntity message,HttpSession session) throws Exception {
        ModelAndView mav = new ModelAndView();

        UserEntity user = (UserEntity) session.getAttribute("user");

        MessageEntity message2 = new MessageEntity();

        message2.setUserid(user.getUserid());
        message2.setTouserid(user2.getUserid());
        message2.setMessagecontent(message.getMessagecontent());
        Date date = new Date();
        message2.setMessagetime(date);
        message2.setIsread(0);
        message2.setRevertid(0);


        mav.setViewName("/views/noteShow.jsp");
        return mav;
    }


    @RequestMapping(value = "/usermessage",method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView usermessage(MessageEntity message,HttpSession session) throws Exception {
        ModelAndView mav = new ModelAndView();



        mav.setViewName("/views/noteShow.jsp");
        return mav;
    }

}
