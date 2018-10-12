package com.aaa.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName TestController
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/11 21:07
 * @Version 1.0
 **/
@Controller
@RequestMapping("/test")
public class TestController {
    @RequestMapping("/del")
    public String del(){
        System.out.println("87878");
        return "/jsp/Login.jsp";
    }
}
