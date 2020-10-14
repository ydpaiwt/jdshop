package com.cn.sxzx.jdteam.list.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author:ydp
 * @Date:2020/10/14 21:02
 */
public class ListServlet extends HttpServlet {
    HttpServletRequest request = null;
    HttpServletResponse response = null;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request = req;
        this.response = resp;

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
