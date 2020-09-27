package com.cn.sxzx.jdteam.order.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:31
 */
public class OrderServlet extends HttpServlet {
    HttpServletRequest request;
    HttpServletResponse response;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.request = request;
        this.response = response;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
