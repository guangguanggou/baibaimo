package com.aaa.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.aaa.Entity.Quanxian;
import com.aaa.Service.LoginService;
import com.aaa.Service.MyShiroRealm;
import com.aaa.Util.ShiroToken;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *@className:UserController.java
 *@discription:
 *@author:zhz
 *@createTime:2018-3-17����4:43:33
 *@version:1.0.0
 **/
@Controller
@RequestMapping("/userControll")
public class UserController {
    @Autowired
    private LoginService loginService;
	@RequestMapping("/del")
	public String del(){
		System.out.println("87878");
		return "/jsp/Login.jsp";
	}
	@RequestMapping("/toLogin")
	public String toLogin(){
		return "/jsp/Login.html";
	}
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam Map map,HttpServletRequest req){

		Object userName = map.get("userName");
		Object passWord = map.get("passWord");
	    List<Quanxian> list = loginService.getAdmin(map);
	    ModelAndView mv=new ModelAndView();
        mv.addObject("list",list);
		if(list.size()>0){
			HttpSession session = req.getSession();
			session.setAttribute("user",list.get(0));


			  List<Quanxian> list2=new ArrayList<Quanxian>();
			for (int i = 0; i < list.size(); i++) {
				if(list.get(i).getTree()!=0){
					list2.add(list.get(i));
				}
			}
			mv.addObject("list2",list2);


			   UsernamePasswordToken token = new UsernamePasswordToken((String)userName, (String)passWord);
			   SecurityUtils.getSubject().login(token);


			   mv.setViewName("/jsp/Show.jsp");
		}else{
		    mv.setViewName("/jsp/Login.html");
		}
		return mv;
	}
	@RequestMapping("/list")
	public String list(){
		return "index";
	}
	@RequestMapping("/toError")
	public String toError(){
		return "/jsp/Login.html";
	}
}
