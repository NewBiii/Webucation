package com.ssy.controller;

import com.ssy.consts.Consts;
import com.ssy.entity.NoteEntityWithBLOBs;
import com.ssy.service.INoteService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;

/**
 * Created by NewBee on 2017/4/6.
 */
@Controller
@RequestMapping("/note")
public class NoteController {

    @Resource
    private INoteService noteService;

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public ModelAndView noteSubmit(NoteEntityWithBLOBs note, HttpSession session, ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response,@RequestParam(value = "file", required = false) MultipartFile file,ModelMap model) throws Exception
    {




        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
        System.out.println(path);
        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);


        note.setUserid((String)session.getAttribute("userid"));


        Date date=new Date();
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
   /* @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public void noteSubmit(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap model) throws Exception
    {

        String path = request.getSession().getServletContext().getRealPath("/images");

        File file1 = new File(path);
        if (!file1.exists())
            file1.mkdirs();
        String fileName = "";// 文件名称


        *//**上传文件处理内容**//*
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload sfu = new ServletFileUpload(factory);
        sfu.setHeaderEncoding("UTF-8"); // 处理中文问题
        sfu.setSizeMax(1024 * 1024); // 限制文件大小
        try {
            List fileItems = sfu.parseRequest(request); // 解码请求

            *//*for (FileItem fi: fileItems) {
                fileName = UUID.randomUUID()+fi.getName().substring(fi.getName().lastIndexOf("."),fi.getName().length());
                fi.write(new File(path, fileName));
            }*//*
        } catch (Exception e) {
            e.printStackTrace();
        }
        *//**********************//*

        //获取图片url地址
        *//*String imgUrl = "http://localhost:8080/wang_editor_demo/image/" + fileName;
        response.setContentType("text/text;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(imgUrl);  //返回url地址
        out.flush();
        out.close();*//*
    }
*/

}
