package com.ssy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ssy.tools.Consts;
import com.ssy.tools.ImageCut;
import com.ssy.tools.Result;
import com.ssy.entity.CollectionEntity;
import com.ssy.entity.NoteEntity;
import com.ssy.entity.UserEntity;
import com.ssy.entity.UsertimeEntity;
import com.ssy.service.ICollectionService;
import com.ssy.service.INoteService;
import com.ssy.service.IUserService;
import com.ssy.service.IUsertimeService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
//spring 默认scope 是单例模式，这样只会创建一个Action对象
//每次访问都是同一个Action对象，数据不安全，所以要用prototype
//scope="prototype" 可以保证 当有请求的时候 都创建一个Action对象
@Scope("prototype")
@RequestMapping("/user")
public class UserController {

	@Resource
	private IUserService userService;
	@Resource
	private IUsertimeService usertimeService;
	@Resource
	private INoteService noteService;
	@Resource
	private ICollectionService collectionService;

	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView login(UserEntity user, HttpSession session) throws Exception {
		ModelAndView mov = new ModelAndView();
		Date date = new Date();

		UserEntity user2 = userService.login(user.getUserid(), user.getUserpassword());
		UsertimeEntity usertime = new UsertimeEntity();

		if (user2.getUsername() != null) {
			usertime.setLogintime(date);
			usertime.setUserid(user2.getUserid());
			usertimeService.insertUsertime(usertime);

			session.setAttribute("user", user2);
			mov.setViewName("/index.jsp");
		} else {

			mov.setViewName("/views/loginError.jsp");
			mov.addObject(Consts.OPERATION_MESSAGE, "用户名或密码错误。请再次输入。");
		}
		return mov;
	}

	@RequestMapping(value = "/logoff", method = RequestMethod.GET)
	public ModelAndView loginoff(UserEntity user, HttpSession session) throws Exception {
		ModelAndView mov = new ModelAndView();

		UserEntity user2 = new UserEntity();

		if (session == null) {
			mov.setViewName("/index.jsp");
		} else {
			user2 = (UserEntity) session.getAttribute("user");
			UsertimeEntity usertimeEntity = usertimeService.selectLastLog(user2.getUserid());
			Date date = new Date();
			usertimeEntity.setLogouttime(date);
			Date logindate = usertimeEntity.getLogintime();
			long logintime = logindate.getTime();
			long logoutime = date.getTime();
			long time = logoutime - logintime;
			usertimeEntity.setOnlinetime((int) time);
			usertimeService.updateUsertime(usertimeEntity);

			session.removeAttribute("user");
			mov.setViewName("/index.jsp");
		}
		return mov;
	}

	@RequestMapping(value = "/register", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView register(UserEntity user) throws Exception {

		int iResult = userService.register(user);

		ModelAndView mov = new ModelAndView();

		if (iResult == Consts.RESULT_SUCCESS) {
			mov.setViewName("/registerResultPage");
			mov.addObject(Consts.OPERATION_MESSAGE, "注册成功。");
		} else if (iResult == Consts.RESULT_NOT_UNIQUE) {
			mov.setViewName("/registerResultPage");
			mov.addObject(Consts.OPERATION_MESSAGE, "此用户已经注册。");
		} else {
			mov.setViewName("/registerResultPage");
			mov.addObject(Consts.OPERATION_MESSAGE, "注册失败。");
		}

		return mov;
	}

	@RequestMapping(value = "/pictureupload", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView pictureUpload(UserEntity user, @RequestParam(value = "userpicture", required = false) MultipartFile picture) throws Exception {
		ModelAndView mov = new ModelAndView();

		//获得路径
		String path = "D:/Workspace/Git repository/UploadPicture/userPicture";
		// String path2 = request.getSession().getServletContext().getRealPath("upload2");

		//获得文件名（不包括路径）
		String fileName = picture.getOriginalFilename();

		//如果不存在，创建服务器端文件
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}

		//上传文件
		try {
			picture.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}


		//获取图片url地址

		String imgUrl = "http://localhost:8080/picture/userPicture/" + fileName;

		user.setUserpicture(imgUrl);

		mov.setViewName("/views/userInfo.jsp");
		mov.addObject("imgUrl", imgUrl);

		return mov;
	}

	@RequestMapping(value = "/imgCut", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	public String profile_imgCut(MultipartFile avatar_file, String avatar_src, String avatar_data, HttpServletRequest request, Model model) {

		String path = "D:/Workspace/Git repository/UploadPicture/userPicture";
		String name = avatar_file.getOriginalFilename();
		//判断文件的MIMEtype
		String type = avatar_file.getContentType();
		if (type == null || !type.toLowerCase().startsWith("image/"))
			return JSON.toJSONString(new Result(false, "不支持的文件类型，仅支持图片！", null));
		System.out.println("file type:" + type);
		String fileName = new Date().getTime() + "" + new Random().nextInt(10000) + "_" + name.substring(name.lastIndexOf('.'));
		System.out.println("文件路径：" + path + ":" + fileName);

		JSONObject joData = (JSONObject) JSONObject.parse(avatar_data);
		// 用户经过剪辑后的图片的大小
		float x = joData.getFloatValue("x");
		float y = joData.getFloatValue("y");
		float w = joData.getFloatValue("width");
		float h = joData.getFloatValue("height");

		//开始上传
		File targetFile = new File(path, fileName);
		//保存
		try {
			if (!targetFile.exists()) {
				targetFile.mkdirs();
				InputStream is = avatar_file.getInputStream();
				ImageCut.cut(is, targetFile, (int) x, (int) y, (int) w, (int) h);
				is.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return JSON.toJSONString(new Result(false, "上传失败，出现异常：", e.getMessage()));
		}
		return JSON.toJSONString(new Result(true, "上传成功!", request.getSession().getServletContext().getContextPath() + fileName));
	}

	@RequestMapping(value = "/userinfo", method = {RequestMethod.POST,RequestMethod.GET}, produces = "text/html;charset=utf-8")
	public ModelAndView userInfo(HttpSession session) {

		ModelAndView mav = new ModelAndView();

		UserEntity user = (UserEntity) session.getAttribute("user");

		//取得用户编写笔记
		List<NoteEntity> notelist = new ArrayList<NoteEntity>();
		notelist = noteService.getNote1ByUser(user.getUserid());
		int notesize = notelist.size();
		mav.addObject("note",notelist);
		mav.addObject("notesize",notesize);

		if (user.getRole() == 0){

			//取得用户编写笔记
			List<NoteEntity> courselist = new ArrayList<NoteEntity>();
			courselist = noteService.getNote2ByUser(user.getUserid());
			int coursesize = courselist.size();
			mav.addObject("course",courselist);
			mav.addObject("coursesize",coursesize);
		}

		/*
		  取得用户收藏的笔记
		  */
		List<CollectionEntity> collnotelist = collectionService.getAllCollForNote(user.getUserid());
		List<NoteEntity> collnote = new ArrayList<NoteEntity>();
		for (CollectionEntity collectionEntity:collnotelist) {

			collnote.add(noteService.getNoteById(collectionEntity.getCourseornoteid()));
		}
		int collnotesize = collnotelist.size();
		mav.addObject("collnote",collnote);
		mav.addObject("collnotesize",collnotesize);


		/*
		  取得用户收藏的课程
		  */
		List<CollectionEntity> collcourselist = collectionService.getAllCollForCourse(user.getUserid());
		List<NoteEntity> collcourse = new ArrayList<NoteEntity>();
		for (CollectionEntity collectionEntity:collcourselist) {

			collcourse.add(noteService.getNoteById(collectionEntity.getCourseornoteid()));
		}
		int collcoursesize = collcourselist.size();
		mav.addObject("collcourse",collcourse);
		mav.addObject("collcoursesize",collcoursesize);

		mav.setViewName("/views/userInfo.jsp");

		return mav;
	}
}