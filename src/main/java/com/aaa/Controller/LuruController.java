package com.aaa.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @ClassName LuruController
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/16 9:36
 * @Version 1.0
 **/
@Controller
@RequestMapping("zhangsan")
public class LuruController {
    @RequestMapping("test")
    public String ceshi(HttpServletRequest req){

        return "/jsp/luru/lian.jsp";
    }
}
