package com.aaa.Controller;

import com.aaa.Entity.Quanxian;
import com.aaa.Service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName TestController
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/11 21:07
 * @Version 1.0
 **/
@Controller
@RequestMapping("/homepage")
public class TestController {
    public static void main(String[] args) {
        Jedis jedis = new Jedis("localhost");
        System.out.println("连接本地的 Redis 服务成功！");
        // 查看服务是否运行
        jedis.flushDB();
        System.out.println("服务 正在运行: " + jedis.ping());

    }

    @Autowired
    private LoginService loginService;

    @RequestMapping("/logout")
    public String del(HttpServletRequest req){
        System.out.println("87878");
        HttpSession session=req.getSession();
        session.invalidate();
        return "/Login.html";
    }
    @RequestMapping("/add")
    public String add(){
        return "/jsp/luru/lian.jsp";
    }

    @RequestMapping("/getRole")
    public String getRole(Integer aid, Model model){
        List<Quanxian> list = loginService.getRole2(aid);
        List<Quanxian> list2=new ArrayList<Quanxian>();
        for (int i = 0; i < list.size(); i++) {
            if(list.get(i).getTree()!=0){
                list2.add(list.get(i));
            }
        }
        model.addAttribute("list2",list2);
        model.addAttribute("list",list);
        return "/jsp/HomePage.jsp";
    }
}
