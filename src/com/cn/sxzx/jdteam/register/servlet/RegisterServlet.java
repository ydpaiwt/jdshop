package com.cn.sxzx.jdteam.register.servlet;

import com.cn.sxzx.jdteam.register.service.RegisterService;
import com.cn.sxzx.jdteam.register.service.imp.RegisterServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class  RegisterServlet extends HttpServlet {
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        RegisterService service = new RegisterServiceImp();

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                this.request = req;
                this.response = resp;

                String method = request.getParameter("method");
                if(method.equals("toRegister")){
                        this.toRegister();
                }

                if (method.equals("register")){
                        this.register();
                }

        }

        //注册
        private void register() throws IOException {
//        request.setCharacterEncoding("utf-8");
                String name = request.getParameter("name");
                String pwd = request.getParameter("pwd");
                boolean istrue = service.register(name,pwd);
                if (istrue){
                        //注册成功
                        response.sendRedirect("index.jsp");
                }else {
                        //注册失败
                        response.sendRedirect("registerServlet?method=toRegister");
                }
        }
        //去注册
        private void toRegister() throws IOException{
                response.sendRedirect("registerV/register.jsp");
        }
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                doGet(req,resp);
        }
}
