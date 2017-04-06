package com.ssy.controller;

import com.ssy.consts.Consts;
import com.ssy.entity.NoteEntityWithBLOBs;
import com.ssy.entity.UserEntity;
import com.ssy.service.INoteService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Created by NewBee on 2017/4/6.
 */
@Controller
@Scope("prototype")
@RequestMapping("/note")
public class NoteAction {

    @Resource
    private INoteService noteService;

    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public ModelAndView noteSubmit(NoteEntityWithBLOBs note,UserEntity user,ModelAndView modelAndView) throws Exception
    {
        Date date=new Date();

        note.setUserid(user.getUserid());
        note.setNotetime(date);
        note.setScore1(0);
        note.setScore2(0);
        note.setScore3(0);
        note.setScore4(0);
        note.setScore5(0);

        int iResult = noteService.insertNote(note);

        ModelAndView mov = new ModelAndView();

        if (iResult == Consts.RESULT_SUCCESS)
        {
            mov.addObject(Consts.OPERATION_MESSAGE,"提交成功。");
        }
        else if (iResult == Consts.RESULT_NOT_UNIQUE)
        {
            mov.addObject(Consts.OPERATION_MESSAGE,"笔记ID被占用。");
        }
        else
        {
            mov.addObject(Consts.OPERATION_MESSAGE,"提交失败。");
        }

        mov.setViewName(modelAndView.getViewName());

        return mov;
    }
}
