package com.cn.sxzx.jdteam.login.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.login.service.LoginService;
import com.cn.sxzx.jdteam.login.service.imp.LoginServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    HttpServletRequest request = null;
    HttpServletResponse response = null;

    LoginService service = new LoginServiceImp();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request = req;
        this.response = resp;

        String method = request.getParameter("method");
        if(method.equals("toLogin")){
            this.toLogin();
        }
        
        if (method.equals("login")){
            this.login();
        }

    }

    //登录
    private void login() throws IOException {
//        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        User users = service.login(name,pwd);
        if (users != null){
            //登录成功
            request.getSession().setAttribute("user",users);
            response.sendRedirect("index.jsp");
        }else {
            //登录失败
            response.sendRedirect("loginServlet?method=toLogin");
        }
    }

    //去登录
    private void toLogin() throws IOException {
        response.sendRedirect("loginV/login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
