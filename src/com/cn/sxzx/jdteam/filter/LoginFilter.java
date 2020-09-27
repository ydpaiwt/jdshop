package com.cn.sxzx.jdteam.filter;

import javax.servlet.*;
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

    }

    @Override
    public void destroy() {
        System.out.println("拦截器销毁...");
    }
}
