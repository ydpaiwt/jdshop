package com.cn.sxzx.jdteam.user.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.User;
import com.cn.sxzx.jdteam.user.service.UserService;
import com.cn.sxzx.jdteam.user.service.imp.UserServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:18
 */
public class UserServlet extends HttpServlet {
    UserService service = new UserServiceImp();
    HttpServletRequest request = null;
    HttpServletResponse response = null;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request = req;
        this.response = resp;
        String method = request.getParameter("method");
        if (method.equals("toUser")){
            this.showUser();
        }
    }

    private void showUser() throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        int user_id = user.getId();
        User user1 = service.showUser(user_id);
        request.setAttribute("user",user1);
        request.getRequestDispatcher("user.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
