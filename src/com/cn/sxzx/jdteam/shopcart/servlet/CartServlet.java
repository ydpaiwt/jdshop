package com.cn.sxzx.jdteam.shopcart.servlet;

import com.cn.sxzx.jdteam.javaBean.pojo.Product;
import com.cn.sxzx.jdteam.shopcart.service.CartService;
import com.cn.sxzx.jdteam.shopcart.service.imp.CarServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author:ydp
 * @Date:2020/9/27 15:01
 */
public class CartServlet extends HttpServlet {
    CartService service = new CarServiceImp();
    HttpServletRequest request;
    HttpServletResponse response;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.request=req;
        this.response=resp;
        String method = request.getParameter("method");
        if (method.equals("toCart")){
//            addCart();
            this.showCart();
        }else if(method.equals("deleteCart")){
            this.deleteCart();
        }
    }
    //展示购物车
    private void showCart() {
        service.showCart();
    }
    /*//添加购物车
    private void addCart() {
        service.addCart();
    }*/
    //删除购物车
    private void deleteCart(){
        int id = 1;
        service.deleteCart(id);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}




