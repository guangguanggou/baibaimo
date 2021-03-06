package com.aaa.Interceptor;

import com.aaa.Entity.Quanxian;
import org.springframework.boot.ansi.AnsiOutput;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @ClassName HanderInterceptor1
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/11 15:10
 * @Version 1.0
 * springmvc拦截器针对handermapping进行拦截设置
 **/
public class HanderInterceptor1 implements HandlerInterceptor {
    //进入hander方法执行之前执行
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session=httpServletRequest.getSession();
        Quanxian quanxian= (Quanxian) session.getAttribute("user");
        String reqname=httpServletRequest.getServletPath();
        if(quanxian!=null&&reqname.substring(reqname.indexOf("/") + 1, reqname.lastIndexOf("/")).equals(quanxian.getBeizhu())){
            return true;
        }else if(quanxian.getBeizhu().equals("boss")){
            return true;
        }else if(reqname.equals("/homepage/getRole.action")){
            return true;
        }else{
            System.out.println(reqname);
            httpServletRequest.getRequestDispatcher("/jsp/Error/noRole.jsp").forward(httpServletRequest,httpServletResponse);
            return false;
        }
    }
    //进入hander方法之后，返回modelandview之前执行
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }
    //hander执行完之后执行
    //统一异常处理，统一日志处理
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
