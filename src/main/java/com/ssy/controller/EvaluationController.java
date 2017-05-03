package com.ssy.controller;

import com.ssy.entity.EvaluationEntity;
import com.ssy.entity.NoteEntity;
import com.ssy.entity.UserEntity;
import com.ssy.service.IEvaluationService;
import com.ssy.service.INoteService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @Author: NewBiii
 * @Date: 2017/5/1
 */
@Controller
@Scope("prototype")
@RequestMapping("/evaluation")
public class EvaluationController {

    @Resource
    private IEvaluationService evaluationService;
    @Resource
    private INoteService noteService;

    @RequestMapping(value = "/evaluation",method = {RequestMethod.POST,RequestMethod.GET})
    public @ResponseBody void evaluation(EvaluationEntity evaluation2, HttpSession session, @RequestParam("stars")int stars) throws Exception {

        /*ModelAndView mov = new ModelAndView();*/

        UserEntity user = (UserEntity) session.getAttribute("user");
        NoteEntity note = (NoteEntity) session.getAttribute("note");

        EvaluationEntity evaluation = new EvaluationEntity();
        evaluation.setIscourseornote(note.getTypee());
        evaluation.setCourseornoteid(note.getNoteid());
        evaluation.setUserid(user.getUserid());
        evaluation.setEvaluationcontent(evaluation2.getEvaluationcontent());
        Date date = new Date();
        evaluation.setEvaluationtime(date);

        evaluationService.insertEvalution(evaluation);

        switch (stars){
            case 1 : note.setScore1(note.getScore1()+1);break;
            case 2 : note.setScore2(note.getScore2()+1);break;
            case 3 : note.setScore3(note.getScore3()+1);break;
            case 4 : note.setScore4(note.getScore4()+1);break;
            case 5 : note.setScore5(note.getScore5()+1);break;
            default :  break;
        }

        noteService.updateNote(note);

       /* mov.setViewName("/views/test.jsp");

        return mov;*/

    }
}
