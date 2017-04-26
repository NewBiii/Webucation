package com.ssy.controller;

import com.ssy.entity.*;
import com.ssy.service.INoteService;
import com.ssy.service.IUserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: NewBiii
 * @Date: Created on 2017/4/14
 */
@Controller
@Scope("prototype")
@RequestMapping(value = "/search")
public class SearchContorller {

    @Resource
    private IUserService userService;
    @Resource
    private INoteService noteService;


    @RequestMapping(value = "/search", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView search(NoteEntity note, HttpSession session) throws Exception
    {
        ModelAndView mov = new ModelAndView();

        List<NoteEntity> noteEntity = new ArrayList<NoteEntity>();

        noteEntity = noteService.getAllNote();

        for (NoteEntity notes : noteEntity) {

            UserEntity user = userService.getUserById(notes.getUserid());
            notes.setUserid(user.getUsername());
        }

        mov.addObject("noteList",noteEntity);

        mov.setViewName("/views/search.jsp");
        return mov;
    }



    @RequestMapping(value = "/gethot", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView gethot(NoteEntity note, HttpSession session) throws Exception
    {
        ModelAndView mov = new ModelAndView();

        List<NoteEntity> noteEntity = new ArrayList<NoteEntity>();
        Map<NoteEntity,String> notemap = new HashMap<NoteEntity,String>();

        noteEntity = noteService.getAllNote();

        mov.addObject("noteList",noteEntity);

        mov.setViewName("/views/search.jsp");
        return mov;
    }
}
