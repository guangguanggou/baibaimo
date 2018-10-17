package com.aaa.Filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
/**
 * @ClassName LoginFilter
 * @Description //TODO
 * @Auther YanAn
 * @Date 2018/10/15 22:55
 * @Version 1.0
 **/
public class LoginFilter implements Filter{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        String reqUri=req.getRequestURI();
        if (reqUri.equals("/Login.html")||reqUri.equals("/jsp/HomePage.jsp")){
            filterChain.doFilter(req, servletResponse);
        }else if(reqUri.substring(reqUri.lastIndexOf(".")).equals(".jsp") || reqUri.substring(reqUri.lastIndexOf(".")).equals(".html")){
            req.getRequestDispatcher("/jsp/Error/error404.jsp").forward(req, servletResponse);
        }else if(reqUri.equals("/homepage/logout.action")){
            req.getSession().invalidate();
            req.getRequestDispatcher("/Login.html").forward(req, servletResponse);
        }else{
            filterChain.doFilter(req, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
