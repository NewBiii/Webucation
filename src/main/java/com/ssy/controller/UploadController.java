package com.ssy.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.PrintWriter;

/**
 * @Author: NewBiii
 * @Date: 2017/4/17
 */


@Controller
@Scope("prototype")
@RequestMapping(value = "/upload")
public class UploadController {

    @RequestMapping(value = "/images", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView uploadPicture(@RequestParam(value = "myFileName", required = false) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView mov = new ModelAndView();

        //获得路径
        String path = "D:/Workspace/Git repository/UploadPicture/";
        // String path2 = request.getSession().getServletContext().getRealPath("upload2");

        //获得文件名（不包括路径）
        String fileName = file.getOriginalFilename();


        //如果不存在，创建服务器端文件
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }

        //上传文件
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }


        //获取图片url地址

        String imgUrl = "http://localhost:8080/picture/" + fileName;
        response.setContentType("text/text;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(imgUrl);  //返回url地址

        out.flush();
        out.close();

        mov.addObject("imgUrl", imgUrl);

        return mov;
    }
}
