package com.cn.sxzx.jdteam.filter;

import com.cn.sxzx.jdteam.javaBean.pojo.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:05
 */
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("拦截器启动...");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String url = request.getServletPath();
        System.out.println(url);

        User user = (User) request.getSession().getAttribute("user");

        if (user != null){
            filterChain.doFilter(request,response);
        }else if (url.indexOf("index.jsp") != -1 || url.indexOf(".jpg") != -1 || url.indexOf("login.jsp") != -1 || url.indexOf("loginServlet") != -1){
            filterChain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {
        System.out.println("拦截器销毁...");
    }
}
