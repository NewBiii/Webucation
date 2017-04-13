package com.ssy.controller;

import com.ssy.consts.Consts;
import com.ssy.entity.UserEntity;
import com.ssy.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
//spring 默认scope 是单例模式，这样只会创建一个Action对象
//每次访问都是同一个Action对象，数据不安全，所以要用prototype
//scope="prototype" 可以保证 当有请求的时候 都创建一个Action对象
@Scope("prototype")
@RequestMapping("/user")
public class UserController
{
	@Resource
	private IUserService userService;
	
    private final Logger logger = Logger.getLogger("");


	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(UserEntity user, HttpSession session) throws Exception
	{
		ModelAndView mov = new ModelAndView();
		UserEntity user2 = userService.login(user.getUserid(), user.getUserpassword());
		if (user2.getUsername() != null )
		{
			session.setAttribute("userid",user2.getUserid());
			session.setAttribute("username",user2.getUsername());
			mov.setViewName("/index");
		}
		else
		{
			logger.warn("登录失败。");
			mov.setViewName("/views/loginError");
			mov.addObject(Consts.OPERATION_MESSAGE,"用户名或密码错误。请再次输入。");
		}
		return mov;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(UserEntity user) throws Exception
	{

		int iResult = userService.register(user);

		ModelAndView mov = new ModelAndView();
		
		if (iResult == Consts.RESULT_SUCCESS)
		{
			mov.setViewName("/registerResultPage");
			mov.addObject(Consts.OPERATION_MESSAGE,"注册成功。");
		} 
		else if (iResult == Consts.RESULT_NOT_UNIQUE)
		{
			mov.setViewName("/registerResultPage");
			mov.addObject(Consts.OPERATION_MESSAGE,"此用户已经注册。");
		}
		else 
		{
			mov.setViewName("/registerResultPage");
			mov.addObject(Consts.OPERATION_MESSAGE,"注册失败。");
		}

		return mov;
	}

}
