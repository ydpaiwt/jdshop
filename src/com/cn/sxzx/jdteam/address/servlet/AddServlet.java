package com.cn.sxzx.jdteam.address.servlet;

import com.cn.sxzx.jdteam.address.service.AddService;
import com.cn.sxzx.jdteam.address.service.imp.AddServiceImp;
import com.cn.sxzx.jdteam.javaBean.pojo.Address;
import com.cn.sxzx.jdteam.javaBean.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:12
 */
public class AddServlet extends HttpServlet {
    HttpServletRequest request = null;
    HttpServletResponse response =null;
    AddService addService = new AddServiceImp();
    //查询收货地址
    public void selectadd() throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        int id = user.getId();
        List<Address> list = addService.selectCon(id);
        request.setAttribute("list",list);
        request.getRequestDispatcher("address.jsp").forward(request,response);
    }

    //增加地址
    private void addContion() throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        int user_id = user.getId();
        request.setCharacterEncoding("utf-8");
        String consignee = request.getParameter("consignee");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        Address address1 = new Address(consignee,address,mobile,user_id);
        addService.addContion(address1);
        this.selectadd();
    }
    //删除地址
    private void deleteAdd() throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        addService.deleteCon(id);
        this.selectadd();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.request = request;
        this.response = response;
        String method = request.getParameter("method");
        if (method.equals("selectadd")){
            this.selectadd();
        }else if (method.equals("addContion")){
            this.addContion();
        }else if (method.equals("deleteAdd")){
            this.deleteAdd();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        doGet(req, resp);
    }
}
